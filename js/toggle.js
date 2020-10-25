
window.onload = function(){
	var read = document.querySelectorAll("span");
	var drawerShow = document.querySelector(".drawer-show");

	read[0].addEventListener("click",show,false);

	read[1].addEventListener("click",hide,false);
	
	function show(){
		drawerShow.style.display = "block";
		read[0].style.display = "none";
		read[1].style.display = "block";
	}

	function hide(){
		drawerShow.style.display = "none";
		read[0].style.display = "block";
		read[1].style.display = "none";
	}
}

