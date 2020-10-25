
// Document Ready
$(()=>{

	checkUserId();


	// EVENT DELEGATION
	$(document)

	.on("pagecontainerbeforeshow",function(e,ui){
		switch(ui.toPage[0].id){
			case "homepage": 
				makeHomePage();
				makeUserProfilePage();
				makeUserPicPage();
				makeUserAnimalsPage();
				makeUserAnimalsNothing();
			//no sth
				break;
			case "list-page":
				makeListPage();
				break;
			case "animal-profile":
				makeAnimalProfilePage();
				break;
		    case "animal-profile .makeAnimalProfileHeader":
				makeAnimalProfileHeader();
				break;
			case "add-location-page":
				 makeAddLocationFormPage();
				break;
			case "add-location-page-map":
			    makeAddLocationMapPage();
				break;
			case "animal-profile-edit":
				makeEditAnimalPage();
				makeEditAnimalPic();
				makeDeleteAnimalId();
				makeDeleteAnimal();
				break;
			case "user-profile-edit":
				makeEditUserPage();
				makeEditUserPicPage();
				break;
			
		}
	})
		

	/* FORM SUBMISSIONS */
	.on("submit","#login-form",function(e){
		e.preventDefault();
		checkLoginForm();

	})
	// .on("submit","#create-form",function(e){
	// 	e.preventDefault();

	// })


	// SEARCH
	.on("submit","#search-bar-form",function(e){
		e.preventDefault();

		let s = $(".list-input").val();
		// let tm = $('#list-page #animal-list');
		tPost({
			type:60,
			params:[
				`%${s}%`,
				`%${s}%`,
				`%${s}%`,
				sessionStorage.userId
			]
		}).then(d=>{
			log(d)

			$("#list-page .animal-list")
				.html(makeAnimalList(d.result));

				let tm = $('#list-page #animal-list');

				document.addEventListener("click",function(){
		
					document.getElementById("animal-list").innerHTML = ""
							goReload();
					})

		})
	})


	.on("submit","#create-form",function(e){
		e.preventDefault();
		console.log("BLARN")

		tPost({
			type:11,
			params:[
				$("#create-name").val(),
				$("#create-username").val(),
				$("#create-email").val(),
				$("#create-password").val(),
				// 'https://via.placeholder.com/400/829/fff/?text='+$("#create-username").val()
			]
		}).then(d=>{
			this.reset();
			openAlerm();

		})
	})

// add an animal on the homepage

	.on("submit","#list-add-form",function(e){
		e.preventDefault();
		console.log("BLARN")

		tPost({
			type:12,
			params:[
				sessionStorage.userId,
				$("#add-animal-name").val(),
				$("#add-animal-type").val(),
				$("#add-animal-age").val(),
				$("#add-animal-gender").val(),
				// $("#add-animal-friendly").val(),
				$("#add-animal-description-id").val(),
				
			]
		}).then(d=>{
			this.reset();
			$("#list-add-modal").removeClass("active");
			// makeListPage();
			closePop1()
		})
	})

	// add an animal on the list page

	.on("submit","#list-add-form-1",function(e){
		e.preventDefault();
		console.log("BLARN")

		tPost({
			type:12,
			params:[
				sessionStorage.userId,
				$("#add-animal-name-1").val(),
				$("#add-animal-type-1").val(),
				$("#add-animal-age-1").val(),
				$("#add-animal-gender-1").val(),
				// $("#add-animal-friendly").val(),
				$("#add-animal-description-id-1").val(),
				
			]
		}).then(d=>{
			this.reset();
			$("#list-add-modal").removeClass("active");
			// makeListPage();
			closePop();
			goReload()
		})
	})
	.on("submit","#add-location-form",function(e){
		e.preventDefault();

		tPost({
			type:13,
			params:[
				sessionStorage.animalId,
				
				+$("#add-location-lat").val(),
				+$("#add-location-lng").val(),
				$("#add-location-description").val(),
			]
		}).then(d=>{
			console.log(d)
			if(d.error) return;

			this.reset();
			// window.history.back();
			makeListPage();
		
		})
	})
	.on("change","#animal-profile-edit .animal-profile-image",function(e){
		e.preventDefault();
		

		log($("#edit-animal-image").val())
		tUpload("#edit-animal-image")
	     
		.then(d=>{
			log(d)
			if(d.error) {
				log(d);
				return;
			}
			tPost({
				type:18,
				params:[
					'uploads/'+d.result,
					sessionStorage.animalId
				]
			})
			.then(d=>{
				makeEditUserPicPage();
				location.reload();
			})
		})
	})

	.on("change","#edit-user-image",function(e){
		e.preventDefault();
		

		log($("#edit-user-image").val())
		tUpload("#edit-user-image")
	     
		.then(d=>{
			log(d)
			if(d.error) {
				log(d);
				return;
			}
			tPost({
				type:19,
				params:[
					'uploads/'+d.result,
					sessionStorage.userId
				]
			})
			.then(d=>{

				openNav();
				location.reload();
				 
			})
		})
	})

	.on("submit","#list-edit-form",function(e){
		e.preventDefault();

		tPost({
			type:15,
			params:[
				$("#edit-animal-name").val(),
				$("#edit-animal-type").val(),
				$("#edit-animal-age").val(),
				$("#edit-animal-gender").val(),
				$("#edit-animal-description-id").val(),
				sessionStorage.animalId
			]
		}).then(d=>{
			console.log(d)
			if(d.error) return;
			window.history.back();
		})
	})

	.on("submit","#list-user-edit-form",function(e){
		e.preventDefault();
	console.log("BLARN")

		tPost({
			type:14,
			params:[
				$("#edit-user-name").val(),
				$("#edit-user-username").val(),
				$("#edit-user-gender").val(),
				$("#edit-user-email").val(),
				$("#edit-user-password").val(),
				sessionStorage.userId
			]
		}).then(d=>{
			console.log(d)
			if(d.error) return;
			window.history.back();
			 // openNav();
		})
	})



	/* CLICKS */

	.on("click",".js-logout",function(e){
		e.preventDefault();
 
		sessionStorage.removeItem("userId");
		checkUserId();
		window.location.href="https://zoeroom.com/aau/wnm617/m15/index.html"
	})

	//Filter
	.on("click",".filter-icon",function(e){
		e.preventDefault();

		let s = $(this).data('id');
		tPost({
			type:70,
			params:[`%${s}`,
			sessionStorage.userId
			]
		}).then(d=>{
			console.log(s)
			$("#list-page .animal-list-ul")
				.html(makeAnimalList(d.result));
			document.addEventListener("click",function(){
				document.getElementById("animal-list").innerHTML = ""
							goReload();
					})

		})
	})

	.on("click",".animal-jump",function(e){
		sessionStorage.animalId = $(this).data("id");
		$.mobile.navigate("#animal-profile");
		
	})
	.on("click",".js-animal-delete",function(e){
		let id = $(this).data("id");
		tPost({
			type:32,
			params:[id]
		}).then(d=>{
			sessionStorage.removeItem("animalId");
			$.mobile.navigate("#list-page");
		})
	})

	// edit user profile
	.on("click",".js-edit-profile",function(e){
			tPost({
				type:6,
				params:[sessionStorage.userId]
			}).then(d=>{
				let o = d.result[0];
				$("#edit-profile-name").val(o.name);
				$("#edit-profile-email").val(o.email);
			})
		})

	// aftet search, return the orangnal page
 //   .on("click","animal-list",function(e){
	// 	e.preventDefault();
 
	// 	location.reload()
	// })



/* ACTIVATORS */ 
	.on("click","[data-activate]",function(e){
		$($(this).data("activate"))
			.addClass("active");
	})
	.on("click","[data-deactivate]",function(e){
		$($(this).data("deactivate"))
			.removeClass("active");
	})
	.on("click","[data-toggle]",function(e){
		$($(this).data("toggle"))
			.toggleClass("active");
	})




	/* Part Templating */
	$("[data-template]").each(function(){
		let str = $($(this).data("template")).html();
		$(this).html(str);
	});

});





