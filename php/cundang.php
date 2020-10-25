<?php

function makeConn(){

	$host = "3306";
	$user = "Brook_animal";
	$pass = "521mljB2Y";
	$dbname = "Brook_animal";

	$c = new mysqli($host, $user ,$pass, $dbname);
    if ($c->connnect_errno) die($c->connect_error);
    $c->set_charset('utf8');
    return $c;
  }
  

function fetchAll($r){
	$a = [];
	while($row = $r->fetch_assoc())
		$a[] = $row;
	return $a;
}

function makeQuery($m,$ps){
	$r = $m->query($ps);
	if(!$m->errno) return [
    	"qry"=>$ps,
    	"result"=>fetchAll($r)
	];
	else return[
 		"qry"=>$ps,
 		"error"=>$m->error
	];
}

function makeStatement($m,$t){
	switch($t){
			case 1:return makeQuery($m,"SELECT * FROM track_users");
			case 2:return makeQuery($m,"SELECT * FROM track_animals");
			case 3:return makeQuery($m,"SELECT * FROM track_locations");
	}
}

echo json_encode(
	makeStatement(
		makeConn(),
		(isset($_GET['type']) ? $_GET['type'] : 1)
		),
	JSON_NUMERIC_CHECK
);


?>




















