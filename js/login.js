

const checkLoginForm = async() => {

	let u = await tPost({
		type:50,
		params:[
				$("#login-username").val(),
				$("#login-password").val()

		]
	});


	// console.log(c)

	// return;

	// let u = $("#login-username").val();
	// let p = $("#login-password").val();

	if(u.result && u.result.length) 
	{
		// success
		sessionStorage.userId = u.result[0].id;
		$("#login-form")[0].reset();

	} else 
	{
		// failure
		sessionStorage.removeItem("userId");
	}
	    checkUserId();
    }

  
const checkUserId = () => {
	let p = ["#login","#creatAccount",""];

	if(sessionStorage.userId===undefined||sessionStorage.userId.length==null) {
		// not logged in
		if(!p.some(o=>o==window.location.hash))
			$.mobile.navigate("#login");
		    openSignAlerm();
	}
	else {
		// logged in
		if(p.some(o=>o==window.location.hash))
			$.mobile.navigate("#homepage");
	}
}
















