<?php

function print_p($d) {
  echo "<pre>",print_r($d),"</pre>";
}


function makeConn() {
  $host = "localhost";
  $user = "zq2y59hz7i88";
  $pass = "521mljB2Y!";
  $dbname = "Brook_animal";

  $c = new mysqli($host,$user,$pass,$dbname);
    if($c->connect_errno) die($c->connect_error);
    $c->set_charset('utf8');
    return $c;
  }


function mapJoin($a,$f,$d) {
  return implode($d,array_map($f,$a));
}

  
 function fetchAll($r){
          $a = [];
          while($row = $r->fetch_assoc())
              $a[] = $row;
          return $a;
}


function makeQuery($mconn,$prepstatement,$preptype,$params){

        if ($preptype!="" && $statement = @$mconn->prepare($prepstatement)) {
          if (
                @$statement->bind_param($preptype, ...$params) &&
                @$statement->execute()
            ) {
                  if(substr($prepstatement,0,6)!="SELECT") {
                    return [
                      "params"=>$params,
                      "qry"=>$prepstatement,
                      "result"=>[]
                    ];
                }

                $r = fetchAll($statement->get_result());
                      return[
                              //"params" =>$params,
                              //"qry"=>$prepstatement,
                              "result"=>$r
                    ];
          }

  } else {
          $r = $mconn->query($prepstatement);

           if(substr($prepstatement,0,6)!="SELECT") {
            return [
                 
                  "qry"=>$prepstatement,
                  "result"=>[]
                ];
          }

          if(!$mconn->errno) return [
              "qry"=>$prepstatement,
              "result"=>fetchAll($r)
    ];
  }
  return[
          "qry"=>$prepstatement,
          "type"=>$preptype,
          "params"=>$params,
          "error"=>$mconn->error
  ];
}

function makeUpload($file,$folder) {
  $filename = microtime(true) . "_" .
    $_FILES[$file]['name'];

  if(@move_uploaded_file(
    $_FILES[$file]['tmp_name'],
    $folder . $filename
  )) return ["result"=>$filename];
  else return [
    "error"=>"File Upload Failed",
    "_FILES"=>$_FILES,
    "filename"=>$filename
  ];
}




function makeStatement($mconn,$type,$params){

  $props_create_locations = ["aid","img","lat","lng","description"];

    switch($type){

      //select all item from table
      case 1: return makeQuery($mconn,"SELECT * FROM track_users","",$params);
      case 2: return makeQuery($mconn,"SELECT * FROM track_animals","",$params);
      case 3: return makeQuery($mconn,"SELECT * FROM track_locations","",$params);

      case 4: return makeQuery($mconn,"SELECT * FROM track_animals WHERE uid=?","i",$params);
      case 5: return makeQuery($mconn,"SELECT * FROM track_locations WHERE aid=?","i",$params);

      // select one item from key
      case 6: return makeQuery($mconn,"SELECT * FROM track_users WHERE id=?","i",$params);
      case 7: return makeQuery($mconn,"SELECT * FROM track_animals WHERE id=?","i",$params);
      case 8: return makeQuery($mconn,"SELECT * FROM track_locations WHERE id=?","i",$params);

      case 11: return makeQuery($mconn,"
            INSERT INTO track_users
            (`name`,`username`,`email`,`password`,`date_create`)
            VALUES
            (?,?,?,md5(?),NOW())
            ","ssss",$params);

      case 12: return makeQuery($mconn,"
            INSERT INTO track_animals
            (`uid`,`name`,`type`,`age`,`gender`,`description`,`date_create`)
            VALUES
            (?,?,?,?,?,?,NOW())
            ","isssss",$params);

    case 13: return makeQuery($mconn,"
            INSERT INTO track_locations
            (`aid`,`lat`,`lng`,`description`,`date_create`)
            VALUES
            (?,?,?,?,NOW())
            ","idds",$params);

    case 14: return makeQuery($mconn,"
            UPDATE track_users
            SET
            `name` = ?,
            `username` = ?,
            `gender` = ?,
            `email` = ?,
            `password` = ?
            WHERE id = ?
            ","sssssi",$params);
    case 15: return makeQuery($mconn,"
            UPDATE track_animals
            SET
            `name` = ?,
            `type` = ?,
            `age` = ?,
            `gender` = ?,
            `description` = ?
            WHERE id = ?
            ","sssssi",$params);
    case 16: return makeQuery($mconn,"
            UPDATE track_locations
            SET
            `lat` = ?,
            `lng` = ?,
            `description` = ?
            WHERE id = ?
            ","ddsi",$params);
    case 17: return makeQuery($mconn,"
            UPDATE track_users
            SET
            `password` = md5(?)
            WHERE id = ?
            ","si",$params);
    case 18: return makeQuery($mconn,"
            UPDATE track_animals
            SET
            `img` = ?
            WHERE id = ?
            ","si",$params);
    case 19: return makeQuery($mconn,"
            UPDATE track_users
            SET
            `img` = ?
            WHERE id = ?
            ","si",$params);

    case 20: return makeQuery($mconn,"SELECT
            track_users.*, count(track_animals.id) as animals
            FROM track_users
            LEFT JOIN track_animals
            ON track_users.id = track_animals.uid
            WHERE track_users.id=?","i",$params);

    case 21: return makeQuery($mconn,"SELECT
            a.*, l.*
            FROM track_animals a
            LEFT JOIN (
              SELECT aid,lat,lng
              FROM track_locations
              ORDER BY date_create DESC
            ) AS l
            ON a.id = l.aid
            WHERE a.uid = ?
            GROUP BY a.id
            ","i",$params);

 


    // Delete
    case 31: return makeQuery($mconn,"DELETE
      FROM track_users
      WHERE id = ?","i",$params);
    case 32: return makeQuery($mconn,"DELETE
      FROM track_animals
      WHERE id = ?","i",$params);
    case 33: return makeQuery($mconn,"DELETE
      FROM track_locations
      WHERE id = ?","i",$params);




 


      case 50: return makeQuery($mconn,"SELECT id FROM track_users WHERE username=? AND password=md5(?)","ss",$params);

      // SEARCH
      case 60: return makeQuery($mconn,"SELECT
        *
        FROM track_animals
        WHERE 
        (
          name LIKE ? OR
          type LIKE ? OR
          gender LIKE ?
        ) AND uid = ?
        ","sssi",$params);


       //Filter
       // case 70: return makeQuery($mconn,"SELECT * FROM track_animals WHERE type=?","s",$params);

       case 70: return makeQuery($mconn,"SELECT
        *
        FROM track_animals
        WHERE 
        (
          type LIKE ? 
        ) AND uid = ?
        ","si",$params);



       case 100: return makeQuery($mconn,"DELETE FROM track_locations WHERE aid = 24","",[]);

  }
}


if(!empty($_FILES)) {

  $r = makeUpload("image","../uploads/");
  die(json_encode($r));
}

$data = json_decode(file_get_contents("php://input"));
 
echo json_encode(
  makeStatement(
      makeConn(),
        @$data->type,
        @$data->params
 
  ),
   JSON_NUMERIC_CHECK
);































