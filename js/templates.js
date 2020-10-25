//curried Functions

const templater = (f) => (a) => 
	(Array.isArray(a)?a:[a])
	.reduce((r,o,i,a)=>r+f(o,i,a),"");

// const makeFakeAnimalList = templater(o=>`
// 		<div> 
// 			<div>${o.name}</div>
// 			<div>${o.type}</div>
			
// 		</div>
// 	`);



const makeAnimalList = templater(o=>`
		<div class="animal-list-item animal-jump" data-id="${o.id}">
			<div class="animal-list-img"><img src="${mkthm(o.img)}"></div>
			<div class="animal-list-content-cover">
		    	<div class="noclick animal-list-name"><b>Name:</b> ${o.name}</div>
				<div class="noclick animal-list-type">Type:${o.type}</div>
				<div class="noclick animal-list-age">Age:${o.age}</div>
			</div>
			<div class="animal-list-detail"><a href="#"><img src="imgs/forward.svg"></a></div>	
		</div>
	`);

const makeAnimalProfile = templater(o=>`


           <div class="animal-basic-info-1">
         	 <div class="animal-profile-main-child flex-parent">
         		<div class="animal-id">
         			<img src="${mkthm(o.img)}"style="width:70px">
         			<h4>${o.name}</h4>
         			<p><b>Gender:</b> ${o.gender}</p>
         			<p><b>Age:</b> ${o.age}</p>
         		</div>
         	    <div class="animal-profile-commen-info">
         	    	<p id="animal-profile-p"><b>Friendly:</b> ${o.friendly} / 5</p>
         		</div>
            </div>
            <div class="animal-other-info" style="padding: .6em 0">
            	<div class="" >
            		<h4>Description</h4>
         			<p style="font-size:.7em">${o.description}</p>
            	</div>
           </div>
            

         </div>
	  
	   
		
	`)


const makeAnimalProfileHeader = templater(o=>`
	<div class="animal-background-div" style="background-image:url('${mkthmBack(o.backgroundImg)}');">
	    	<a class="animal-profile-back animal-profile-symbol" href="#list-page">
			<img src="imgs/back2.svg" style="width: 30px">
		    </a>
		<a href="#animal-profile-edit" class="animal-profile-edit animal-profile-symbol">
		    <img src="imgs/edit2.svg" style="width: 30px">
		</a>	
	</div>

	   
		
	`)

const makeUserProfile = templater(o=>`
       
       
			<img src="${mkthmuUser(o.img)}">
				<a href="#user-profile-edit" id="profile-edit"><img src="imgs/edit.svg" style="width: 15px;"></a>
					<h4 style="margin:0.2em;margin:0.5em 0">${o.name}</h4>
					<h4 style="font-size: 0.7em; margin:1em"><b>ID: </b> ${o.id}</h4>
					<p style="font-size: 0.7em; margin:1.5em 0">Email: ${o.email}</p>
		 
	`)

const makeUserPic = templater(o=>`
       
       
			<a href="" onclick="openNav()">
				<span>
					<img src="${mkthmuUser(o.img)}" style="width:40px">
				</span>
		    </a>
	`)


const makeUserAnimals = templater(o=>`
       
       
		<div class="animal-list-name-change animal-jump" data-id="${o.id}">
			<div class="animal-list-img">
				<img src="${mkthm(o.img)}" style="width:50px">
			</div>
			<div class="animal-list-content-cover">
		    	<div class="noclick animal-list-name"><b>Name:</b> ${o.name}</div>
				<div class="noclick animal-list-type"><b>Type:</b>${o.type}</div>
				<div class="noclick animal-list-age"><b>Age:</b>${o.age}</div>
			</div>
		    <div class="animal-list-detail-change"><a href="#"><img src="imgs/forward.svg" style="width:15px"></a></div>	

		</div>
	`)
const makeUserAnimalsNothing = templater(o=>`
       
       
		<div class="makeNothing-text">
              You haven't any animal yet
		</div>
	`)




const makeHomePagePopup = templater(o=>`
       
       <div class="info-pop">
          <div class="animal-jump" data-id="${o.id}">
          <div class="flex-parent noclick map-animal-profile">
			<div class="flex-none animal-id">
				    <img src="${mkthm(o.img)}"style="width:70px">
         			<h4>${o.name}</h4>
         			<p><b>Gender:</b> ${o.gender}</p>
         			<p><b>Age:</b> ${o.age}</p>
			</div>

			<div class="animal-profile-commen-info">
         	    	<p id="animal-profile-p"><b>Friendly:</b> ${o.friendly} / 5</p>
         	</div>  

       </div>
       <br>

       <div class="info-pop-descrition"><p><b>Description:</b><br> ${o.description}</p></div>	
       <div class="flex-parent goDetail-parent">
			<div class="goDetail-child"><p class="animal-jump link-to-datail">See more</p></div>
			<img src="imgs/goDetail.svg" style="width:30px">

	   </div>
	`)

const makeAnimalPic = templater(o=>`
	    <form class="animal-profile-image">
			<label>
					<input type="file" id="edit-animal-image" class="hidden">   
		        	<img src="${mkthm(o.img)}" style="width:65px" id="edit-animal-pic">
		        	<img src="imgs/camera1.svg" style="width: 18px" class="upload-pic-icon">
 
		    </label>
		</form>
	`)

const deleteAnimalId = templater(o=>`
	<div class="make-change">
		<h4 data-role="none" class="user-profile-edit-hader">Edit Animal Profile</h4>
		    	<div class="user-profile-edit-back">
		    		<a href=#back" data-rel="back"" class="user-profile-edit-a">
		    			<img src="imgs/back.svg" style="width: 20px">
		    		</a>
		    	</div>
	  	<div class="make-delete">
	  	<a href="" onclick="openDeLetePop()">
			<div class="delete pos-btn">
			 
				<img src="imgs/delete1.svg" alt="" style="width: 20px" class="onclick">
			</div>
		</a>
	    </div>
	</div>
	`)
const makeUserPica = templater(o=>`
	    <form class="user-profile-image">
			<label>
					<input type="file" id="edit-user-image" class="hidden">   
		        	<img src="${mkthmuUser(o.img)}" style="width:80px" id="edit-user-pic">	
 					<img src="imgs/camera1.svg" style="width: 18px" class="upload-pic-icon">
		    </label>
		</form>
		
	`)
const makeDeletePop = templater(o=>`
            <img src="imgs/wrong.svg" width="30px">
		            	<h4>Are you sure want to delete this animal?</h4>
		            	<br>
		            	<div class="flex-parent add-animal-alerm-btn">
			            	<a href="" onclick="closeDeLetePop()">
			            	<input type="button" data-role="none" class="alert-btn" value="Cancel" onclick="closeAddAnimalAlermL()"></a>
			            	<a href="" onclick="" class="js-animal-delete" data-id="${o.id}">
			            	<input type="button" data-role="none" class="alert-btn" value="Delete" onclick="discardAddAnimalAlermL()" style="color:#ed6e50; font-weight: inherit;"></a>
			            </div>          
	`)

// const makeAnimalFilter = templater(o=>`
//                 <div class="category-animal-img">
//                     <a href="#" class="filter-icon" data-id="${o.type}"><img src="imgs/i-chicken.svg"><p>Chicken</p></a>
// 				</div>
// 				<div class="category-animal-img">
//                     <a href="#" class="filter-icon" data-id="${o.type}"><img src="imgs/i-dog.svg"><p>Dog</p></a>
// 				</div>
// 				<div class="category-animal-img">
//                     <a href="#" class="filter-icon" data-id="${o.type}"><img src="imgs/i-pig.svg"><p>Pig</p></a>
// 				</div>
// 				<div class="category-animal-img">
//                     <a href="#" class="filter-icon" data-id="${o.type}"><img src="imgs/i-duck.svg"><p>Duck</p></a>
// 				</div>
// 				<div class="category-animal-img">
//                     <a href="#" class="filter-icon" data-id="${o.type}"><img src="imgs/i-horse.svg"><p>Horse</p></a>
// 				</div>
// 				<div class="category-animal-img">
//                     <a href="#" class="filter-icon" data-id="${o.type}"><img src="imgs/i-cow.svg"><p>Cow</p></a>
// 				</div>
// 				<div class="category-animal-img">
//                     <a href="#" class="filter-icon" data-id="${o.type}"><img src="imgs/i-donkey.svg"><p>Donkey</p></a>
// 				</div>
// 				<div class="category-animal-img">
//                     <a href="#" class="filter-icon" data-id="${o.type}"><img src="imgs/i-sheep.svg"><p>Sheep</p></a>
// 				</div>        
// 	`)


// const makeAnimalFilter= templater(o=>`
// 		<div class="animal-list-item animal-jump" data-id="${o.id}">
// 			<div class="animal-list-img"><img src="${mkthm(o.img)}"></div>
// 			<div class="animal-list-content-cover">
// 		    	<div class="noclick animal-list-name"><b>Name:</b> ${o.name}</div>
// 				<div class="noclick animal-list-type">Type:${o.type}</div>
// 				<div class="noclick animal-list-age">Age:${o.age}</div>
// 			</div>
// 			<div class="animal-list-detail"><a href="#"><img src="imgs/forward.svg"></a></div>	
// 		</div>
// 	`);


















