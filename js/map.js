


const makeMap = async(tm) => {
	await checkData(()=>window.google);

	let lm = {
		lat: 37.887234,
		lng: -121.832557
	};

	if(!tm.data("map")) tm
		
		// for google map
		.data(
			"map",

				new google.maps.Map(tm[0], {
					center: lm,
					zoom: 10,
					disableDefaultUI:true,
					styles:mapsStyle		
		})
	)
     
	.data(
			"infoWindow",

				new google.maps.InfoWindow({
					content:''
		})

	);
  

	makeMarkers(tm,[])
}




const makeMarkers = (tm,locs) => {

	if(tm.data("markers"))
		tm.data("markers")
			.forEach(o=>o.setMap(null));

	tm.data("markers",[])
       

	locs.forEach(o=>{
		let m = new google.maps.Marker({
			position: o,
			map: tm.data("map"),
			icon:{
					url:mkthm(o.img),
					scaledSize:{
						height:40,
						width:40
				}
			}
		});

		tm.data("markers").push(m);
	})


}

const setMapBounds = (map,locs) => {
	if(locs.length==1)
		map.setCenter(locs[0]);
	else
	if(locs.length==0) {
		if(window.location.protocol!=="https:") return;
		else {
			navigator.geolocation.getCurrentPosition(p=>{
				let pos = {
					lat:p.coords.latitude,
					lng:p.coords.longitude
				}
				map.setCenter(pos);
			},(...args)=>{
				console.log("error?",args);
			},{
				enableHighAccuracy: false,
				timeout: 5000,
				maximumAge: 0
			});
		}
	}
	else {
		let bounds = new google.maps.LatLngBounds(null);
		locs.forEach(o=>bounds.extend(o));
		setTimeout(()=>map.fitBounds(bounds),100);
	}
}






const mapsStyle = [
  {
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#242f3e"
      }
    ]
  },
  {
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#746855"
      }
    ]
  },
  {
    "elementType": "labels.text.stroke",
    "stylers": [
      {
        "color": "#242f3e"
      }
    ]
  },
  {
    "featureType": "administrative.locality",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#ffd369"
      }
    ]
  },
  {
    "featureType": "poi",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#ffd369"
      }
    ]
  },
  {
    "featureType": "poi.park",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#263c3f"
      }
    ]
  },
  {
    "featureType": "poi.park",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#6b9a76"
      }
    ]
  },
  {
    "featureType": "road",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#38414e"
      }
    ]
  },
  {
    "featureType": "road",
    "elementType": "geometry.stroke",
    "stylers": [
      {
        "color": "#212a37"
      }
    ]
  },
  {
    "featureType": "road",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#9ca5b3"
      }
    ]
  },
  {
    "featureType": "road.highway",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#746855"
      }
    ]
  },
  {
    "featureType": "road.highway",
    "elementType": "geometry.stroke",
    "stylers": [
      {
        "color": "#1f2835"
      }
    ]
  },
  {
    "featureType": "road.highway",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#ffd369"
      }
    ]
  },
  {
    "featureType": "transit",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#2f3948"
      }
    ]
  },
  {
    "featureType": "transit.station",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#ffd369"
      }
    ]
  },
  {
    "featureType": "water",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#17263c"
      }
    ]
  },
  {
    "featureType": "water",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#515c6d"
      }
    ]
  },
  {
    "featureType": "water",
    "elementType": "labels.text.stroke",
    "stylers": [
      {
        "color": "#17263c"
      }
    ]
  }
]



      // styles: [
      //       {"elementType": "geometry","stylers": [{"color": "#242f3e"}]},
      //       {"elementType": "labels.text.fill","stylers": [{"color": "#ffd369"}]},
      //       {"elementType": "labels.text.stroke","stylers": [{"color": "#242f3e"}]},
      //       {"featureType": "administrative.locality","elementType": "labels.text.fill","stylers": [{"color": "#e26241"}]},
      //       {"featureType": "poi","elementType": "labels.text.fill","stylers": [{"color": "#e26241"}]},
      //       {"featureType": "poi.park","elementType": "geometry","stylers":[{"color": "#263c3f"}]},
      //       {"featureType": "poi.park","elementType": "labels.text.fill","stylers":[{"color": "#6b9a76"}]},
      //       {"featureType": "road","elementType": "geometry","stylers":[{"color": "#38414e"}]},
      //       {"featureType": "road","elementType": "geometry.stroke","stylers":[{"color": "#212a37"}]},
      //       {"featureType": "road","elementType": "labels.text.fill","stylers":[{"color": "#9ca5b3"}]},
      //       {"featureType": "road.highway","elementType": "geometry","stylers":[{"color": "#746855"}]},
      //       {"featureType": "road.highway","elementType": "geometry.stroke","stylers":[{"color": "#1f2835"}]},
      //       {"featureType": "road.highway","elementType": "labels.text.fill","stylers":[{"color": "#ffd369"}]},
      //       {"featureType": "transit","elementType": "geometry","stylers":[{"color": "#2f3948"}]},
      //       {"featureType": "transit.station","elementType": "labels.text.fill","stylers":[{"color": "#e26241"}]},
      //       {"featureType": "water","elementType": "geometry","stylers":[{"color": "#17263c"}]},
      //       {"featureType": "water","elementType": "labels.text.fill","stylers":[{"color": "#515c6d"}]},
      //       {"featureType": "water","elementType": "labels.text.stroke","stylers":[{"color": "#17263c"}]
      //       }
      //     ]