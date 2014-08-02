// MBP - Mobile boilerplate helper functions
(function(document){
	window.MBP = window.MBP || {};

	// Fix for iPhone viewport scale bug
	// http://www.blog.highub.com/mobile-2/a-fix-for-iphone-viewport-scale-bug/
	MBP.viewportmeta = document.querySelector && document.querySelector('meta[name="viewport"]');
	MBP.ua = navigator.userAgent;

	MBP.scaleFix = function () {
		if (MBP.viewportmeta && /iPhone|iPad|iPod/.test(MBP.ua) && !/Opera Mini/.test(MBP.ua)) {
			MBP.viewportmeta.content = "width=device-width, minimum-scale=1.0, maximum-scale=1.0";
			document.addEventListener("gesturestart", MBP.gestureStart, false);
		}
	};
	MBP.gestureStart = function () {
		MBP.viewportmeta.content = "width=device-width, minimum-scale=0.25, maximum-scale=1.6";
	};
})(document);

var nav = responsiveNav(".nav-main", { // Selector
  animate: true, // Boolean: Use CSS3 transitions, true or false
  transition: 400, // Integer: Speed of the transition, in milliseconds
  label: "", // String: Label for the navigation toggle
  insert: "after", // String: Insert the toggle before or after the navigation
  customToggle: "", // Selector: Specify the ID of a custom toggle
  closeOnNavClick: false, // Boolean: Close the navigation when one of the links are clicked
  openPos: "relative", // String: Position of the opened nav, relative or static
  jsClass: "js", // String: 'JS enabled' class which is added to  element
  init: function(){}, // Function: Init callback
  open: function(){}, // Function: Open callback
  close: function(){} // Function: Close callback
});

$(document).ready(function() {

	if($("#map").length > 0) {


		var draggable = true;
		var $lat = $("#map-lat");
		var $lng = $("#map-lng");
		var $zoom = $("#map-zoom");

	

		var map = new GMaps({
			zoomControlOpt: {
            style : 'SMALL',
            position: 'TOP_RIGHT'
        },

			options: { /*
			'styles': 

					[
					  {
					    "featureType": "administrative",
					    "stylers": [
					      { "saturation": -100 }
					    ]
					  },{
					    "featureType": "landscape",
					    "stylers": [
					      { "hue": "#6600ff"},
					      { "saturation": -42 }
					    ]
					  },{
					    "featureType": "poi",
					    "stylers": [
					      { "saturation": -100 }
					    ]
					  },{
					    "featureType": "road.local",
					    "stylers": [
					      { "hue": "#0011ff"},
					      { "saturation": 49 }
					    ]
					  },{
					    "featureType": "road.highway",
					    "stylers": [
					      { "hue": "#2200ff" },
					      { "saturation": -51 }
					    ]
					  },{
					    "featureType": "road.arterial",
					    "stylers": [
					      { "hue": "#7f00ff" },
					      { "saturation": 38 }
					    ]
					  },{
					    "featureType": "transit",
					    "stylers": [
					      { "saturation": 49 },
					      { "hue": "#00e5ff" }
					    ]
 					  },{
					    "featureType": "water",
					    "stylers": [
					      { "hue": "#007fff" },
					      { "saturation": 71 }
					    ]
					  },{
					  }
					]

	*/	},

			div: '#map',
			lat: $lat.val(),
			lng: $lng.val(),
			zoom: parseInt($zoom.val()),
			scrollwheel: false,
			zoom_changed: function() {
				$zoom.val(this.getZoom());
			}
		});

		var marker = map.addMarker({
			lat: $lat.val(),
			lng: $lng.val(),
			icon: 'img/bulle.png',
			draggable: false,
			position_changed: function() {
				$lat.val(this.getPosition().lat());
				$lng.val(this.getPosition().lng());
			}
		});
	}

	// Doughnut

	if($("#doughnut").length > 0) {

		var $gd = $("#gd-nb");
		var $prog = $("#prog-nb");
		var $graph = $("#graph-nb");
		var $son = $("#son-nb");

		var doughnutData = [
			{
				value: parseInt($gd.val()),
				color:"#F7464A",
				highlight: "#FF5A5E",
				label: "GD"
			},
			{
				value: parseInt($prog.val()),
				color: "#46BFBD",
				highlight: "#5AD3D1",
				label: "Prog"
			},
			{
				value: parseInt($graph.val()),
				color: "#FDB45C",
				highlight: "#FFC870",
				label: "Graph"
			},
			{
				value: parseInt($son.val()),
				color: "#949FB1",
				highlight: "#A8B3C5",
				label: "Son"
			}

		];

		var ctx = document.getElementById("doughnut").getContext("2d");
		window.myDoughnut = new Chart(ctx).Doughnut(doughnutData);
	}

});
