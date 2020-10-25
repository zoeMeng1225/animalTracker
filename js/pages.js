const makeHomePage = async() => {

  let tm = $('#homepage #map');
  $("#map").css("position","fixed !important");
   makeMap(tm);
   

 tPost({
      type:21,
      params:[sessionStorage.userId]
 })
  .then(d=>{
        log(d)
        let animals = d.result.filter((o)=>o.lat!=null)
        makeMarkers(tm,animals);

        setMapBounds(tm.data("map"),animals);


        tm.data("markers").forEach((o,i,a)=>{
          o.addListener("click",e=>{
            console.log("honk",i);



            // tm.data("infoWindow")
            //   .setContent(
            $("#homepage-animal-info-modal")
              .addClass("active")
              .find(".modal-body")
              .html(
                makeHomePagePopup(animals[i])
                  );

            // var eAnimal=tm.data("map"),o

            // tm.data("infoWindow")
            //   .open(tm.data("map"),o);
            //   jQuery('.gm-style').removeClass('gm-style');


            // sessionStorage.animalId=animals[i].id;
            // $.mobile.navigate("http://zoeroom.com/aau/wnm617/m11/index.html#animal-profile")
        

          })
      })
  });
}
const makeListPage = async()=>{

	let a = await tPost({
		type:4,
		params: [sessionStorage.userId]
	});
     
     console.log(a)

     $("#list-page .animal-list-ul")
     	.html(makeAnimalList(a.result));

  }


  // // make filter
  // const makeFilterList = async()=>{
  //    let s = $(this).data('id')
  //      tPost({
  //           type:70,
  //           params:[sessionStorage.animalType]
  //       }).then(a=>{
  //         let o = a.result[0];
          
  //         $("#animal-list .animal-list-ul")
  //            .html(makeAnimalFilter(a.result));

  //       });
  // }




const makeAnimalProfilePage = async() => {


  let tm = $('#animal-profile .map');
  await makeMap(tm);

  if(sessionStorage.animalId===undefined)
    $.mobile.navigate("#list-page");

  tPost({
    type:7,
    params:[sessionStorage.animalId]
  }).then(a=>{
    $("#animal-profile .animal-basic-info")
      .html(makeAnimalProfile(a.result));
  });

  tPost({
    type:7,
    params:[sessionStorage.animalId]
  }).then(a=>{
    $("#animal-profile .animal-profile-header")
      .html(makeAnimalProfileHeader(a.result));
  });

  tPost({
    type:5,
    params:[sessionStorage.animalId]
  }).then(a=>{
    makeMarkers(tm,a.result);
    setMapBounds(tm.data("map"),a.result);
  })


}

const makeUserProfilePage = async() => {

  if(sessionStorage.userId===undefined) {
    $.mobile.navigate("#login");
  }
  tPost({ type:20, params:[sessionStorage.userId] })
  .then(a=>{
      $("#side-menu header div #profile-info") 
      .html(makeUserProfile(a.result));

  }).catch((e) => {
 
  });
}





const makeUserPicPage= async() => {

  tPost({ type:20, params:[sessionStorage.userId] })
  .then(a=>{
      $("#homepage .menu-icon") 
      .html(makeUserPic(a.result));

  }).catch((e) => {
 
  });
}


const makeUserAnimalsPage = async()=>{


  let a = await tPost({
    type:4,
    params: [sessionStorage.userId]
  });
     
     console.log(a)
     if (a.result==undefined||a.result=="") {
       $("#homepage .saved-animals")
      .html(makeUserAnimalsNothing())

     }else{

     $("#homepage .saved-animals")
      .html(makeUserAnimals(a.result))}

  }


const makeAddLocationMapPage = async() => {

  if(sessionStorage.animalId===undefined)
    $.mobile.navigate("#animal-profile");

  let tm = $('#add-location-page-map .map');
  await makeMap(tm);
  tm.data("map").setZoom(12)
  tm.data("map").addListener("click",e=>{
    console.log(e.latLng.lat(),e.latLng.lng());
       
    $("#add-location-lat").val(e.latLng.lat())
    $("#add-location-lng").val(e.latLng.lng());
    // $("#add-location-modal").addClass("active");
   
  })
}

const makeAddLocationFormPage = async() => {

 if(sessionStorage.animalId===undefined)
    $.mobile.navigate("#animal-profile");
 
 let tm = $('#add-location-page .map');
 await makeMap(tm);
 tm.data("map").setZoom(12)

 const addBtn=document.getElementById('add-submit');
  addBtn.addEventListener('click',e=>{

    // $("#add-location-lat").val(e.latLng.lat())
    // $("#add-location-lng").val(e.latLng.lng())
    $("#add-location-modal").addClass("active");
     $.mobile.navigate("#animal-profile")

  })
}


const makeEditAnimalPage = async() => {

  tPost({
    type:7,
    params:[sessionStorage.animalId]
  }).then(a=>{
    let o = a.result[0];
    $("#edit-animal-name").val(o.name);
    $("#edit-animal-type").val(o.type);
    $("#edit-animal-age").val(o.age);
    $("#edit-animal-gender").val(o.gender);
    $("#edit-animal-description-id").val(o.description);
  });
}

const makeDeleteAnimal = async() => {

  tPost({
    type:7,
    params:[sessionStorage.animalId]
  }).then(a=>{
    let o = a.result[0];
    
    $("#animal-profile-edit #animal-profile-edit-alert")
    .html(makeDeletePop(a.result));
  });
}

const makeEditAnimalPic = async() => {

  tPost({
    type:7,
    params:[sessionStorage.animalId]
  }).then(a=>{
    let o = a.result[0];
    
    $("#animal-profile-edit .user-profile-edit-pic")
    .html(makeAnimalPic(a.result));

  });
}

const makeDeleteAnimalId = async() => {

  tPost({
    type:7,
    params:[sessionStorage.animalId]
  }).then(a=>{
    let o = a.result[0];
    
    $("#animal-profile-edit [data-role='header'] ")
    .html(deleteAnimalId(a.result));
  });
}

const makeEditUserPage = async() => {

  tPost({
    type:6,
    params:[sessionStorage.userId]
  }).then(a=>{
    let o = a.result[0];
    $("#edit-user-name").val(o.name);
    $("#edit-user-username").val(o.username);
    $("#edit-user-gender").val(o.gender);
    $("#edit-user-email").val(o.email);
    $("#edit-user-password").val(o.password);
   
  });
}

const makeEditUserPicPage = async() => {

  tPost({
    type:6,
    params:[sessionStorage.userId]
  }).then(a=>{
    let o = a.result[0];
    
    $("#user-profile-edit .user-profile-edit-pic")
    .html(makeUserPica(a.result));
  });
}






// 	$("#list-page .animal-list")
// 		.html(makeFakeAnimalList(a,rusult));
// }

// const makeAnimalProfilePage.animalId







