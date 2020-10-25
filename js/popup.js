
function openCreate() 
{
  document.getElementById("creatAccount").style.height = "100%";
}

function closeCreate() 
{
  document.getElementById("creatAccount").style.height= "0";
}



function openLogin() 
{
  document.getElementById("login").style.height = "100%";
}

function closeLogin() 
{
  document.getElementById("login").style.height= "0";
}




function openPop() {
  document.getElementById("add-popup").style.height= "100%";
  document.getElementById("mask1").style.display= "block";
}

function closePop() 
{
  document.getElementById("add-popup").style.height = "0";
  document.getElementById("mask").style.display= "none";
  document.getElementById("mask1").style.display= "none";
}



function openNav() 
{
  document.getElementById("side-menu").style.left = "-10%";
  document.getElementById("sidebar-mark-id").style.display = "block";
  document.getElementById("sidebar-mark-id-body").style.display = "block";
}

function closeNav() 
{
  document.getElementById("side-menu").style.left = "-100%";
  document.getElementById("sidebar-mark-id").style.display = "none";
  document.getElementById("sidebar-mark-id-body").style.display = "none";
}




function openPop1() {
  document.getElementById("add-popup1").style.height= "100%";
  document.getElementById("mask").style.display= "block";
}

function closePop1(){
  document.getElementById("add-popup1").style.height = "0";
  // document.getElementById("mask").style.display= "none";
  document.getElementById("mask").style.display= "none";
  document.getElementById("mask1").style.display= "none";
}


function goBack() 
{
  window.history.go();
}

function openAlerm() {
  document.getElementById("create-alarm-mark").style.display= "block";
  document.getElementById("create-alarm").style.display= "block";
}

function closeAlerm() {
  document.getElementById("create-alarm-mark").style.display= "none";
  document.getElementById("create-alarm").style.display= "none";
}

function openSignAlerm() {
  document.getElementById("signin-alarm-mark").style.display= "block";
  document.getElementById("signin-alarm").style.display= "block";
  $("#login-form")[0].reset();
}

function closeSignAlerm() {
  document.getElementById("signin-alarm-mark").style.display= "none";
  document.getElementById("signin-alarm").style.display= "none";
}


function openAddLocationPop() {
  document.getElementById("add-location-popup").style.display= "block";
  document.getElementById("add-location-mark").style.display= "block";
  // goReload()
}

function closeAddLocationPop() {
  document.getElementById("add-location-popup").style.display= "none";
  document.getElementById("add-location-mark").style.display= "none";
  // $("#add-location-page")[0].reset();
}

function goReload()
{
  location.reload()
}



//list page scroll down event


window.onscroll = function (e)
{
  // console.log(e);

  var scrollTop = e.target.scrollingElement.scrollTop;
  scrollTopLast = 0;

  if(scrollTop > scrollTopLast){

    console.log("down");
    // $("#list-page-header-id").css("height","100px")
  }
  else

    console.log("up")
  // $("#list-page-header-id").css("height","10%")
}

// -------for homepage-popup

function openAddAnimalAlerm(){
  document.getElementById("add-animal-alarm").style.display= "block";
  document.getElementById("list-add-form").style.display= "none";
  document.getElementById("add-popup1").style.backgroundColor= "#515050";
  // goReload()
}

function closeAddAnimalAlerm() {
  document.getElementById("add-animal-alarm").style.display= "none";
  document.getElementById("list-add-form").style.display= "block";
   document.getElementById("add-popup1").style.backgroundColor= "#efefef";

}

function discardAddAnimalAlerm()
{
  document.getElementById("mask").style.display= "none";
  document.getElementById("add-animal-alarm").style.display= "none";
  document.getElementById("list-add-form").style.display= "block";
  document.getElementById("add-popup1").style.backgroundColor= "#efefef";
  document.getElementById("add-popup1").style.height = "0";
  document.getElementById("mask1").style.display= "none";
  
}

//-------for list-page

function openAddAnimalAlermL(){
  document.getElementById("add-animal-alarm1").style.display= "block";
  document.getElementById("list-add-form-1").style.display= "none";
  document.getElementById("add-popup").style.backgroundColor= "#515050";
  // goReload()
}

function closeAddAnimalAlermL() {
  document.getElementById("add-animal-alarm1").style.display= "none";
  document.getElementById("list-add-form-1").style.display= "block";
   document.getElementById("add-popup").style.backgroundColor= "#efefef";

}

function discardAddAnimalAlermL()
{
  document.getElementById("mask1").style.display= "none";
  document.getElementById("add-animal-alarm1").style.display= "none";
  document.getElementById("list-add-form-1").style.display= "block";
  document.getElementById("add-popup").style.backgroundColor= "#efefef";
  document.getElementById("add-popup").style.height = "0";
  document.getElementById("mask").style.display= "none";
  
}



//delete animal
function openDeLetePop(){
  document.getElementById("animal-profile-edit-mark").style.display= "block";
  document.getElementById("animal-profile-edit-alert").style.display= "block";
  // goReload()
}

function closeDeLetePop(){
  document.getElementById("animal-profile-edit-mark").style.display= "none";
  document.getElementById("animal-profile-edit-alert").style.display= "none";
  // goReload()
}



// document.getElementById('getval').addEventListener('change', readURL, true);
// function readURL(){
//    var file = document.getElementById("getval").files[0];
//    var reader = new FileReader();
//    reader.onloadend = function(){
//       document.getElementById('clock').style.backgroundImage = "url(" + reader.result + ")";        
//    }
//    if(file){
//       reader.readAsDataURL(file);
//     }else{
//     }
// }

function filterArray()
{
  
}






