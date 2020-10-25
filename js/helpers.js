
const tPost = (q) => {
	return fetch(`php/data.php`,{
		method:'POST',
		body:JSON.stringify(q),
		headers:{
			'Content-Type':'application/json'
		}
	})
	.then(r=>r.json());
}


const tUpload = (s) => {
	let fd = new FormData();
	fd.append('image',$(s)[0].files[0]);

	return fetch(`php/data.php`,{
		method:'POST',
		body:fd
	}).then(d=>d.json());
}




const checkData = (checker) => new Promise((resolve,reject)=>{
	const check = () => {
		return checker()?resolve():setTimeout(check,10);
	}
	check();
});


const log = (d) => {
	console.group()
	for(let i in d) console.log(i,d[i]);
	console.groupEnd()
}
const getLocations = () => tPost({type:3,params:[]}).then(d=>log(d))


const mkthm = (s) => {
	return s||'imgs/sample.svg';
}

const mkthmBack = (s) => {
	return s||'imgs/sample-back.png';
}

const mkthmuUser = (s) => {
	return s||'imgs/sample-user.svg';
}

	