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

	//EVENT : MAP

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

	// EVENT : DOUGHNUT

	if($("#doughnut").length > 0) {

		var $gd = $("#gd-nb");
		var $prog = $("#prog-nb");
		var $graph = $("#graph-nb");
		var $son = $("#son-nb");

		var doughnutData = [
			{
				value: parseInt($gd.val()),
				color:"#df4949",
				highlight: "#fa5353",
				label: "GD"
			},
			{
				value: parseInt($prog.val()),
				color: "#e27a3f",
				highlight: "#fb8847",
				label: "Prog"
			},
			{
				value: parseInt($graph.val()),
				color: "#efc94c",
				highlight: "#fbda6c",
				label: "Graph"
			},
			{
				value: parseInt($son.val()),
				color: "#45b29d",
				highlight: "#50cbb3",
				label: "Son"
			}

		];

		var ctx = document.getElementById("doughnut").getContext("2d");
		window.myDoughnut = new Chart(ctx).Doughnut(doughnutData);
	}

	// EVENT : BAR

	if($("#bar").length > 0) {

		var randomScalingFactor = function(){ return Math.round(Math.random()*100)};

		var barChartData = {
			labels : ["Prog-Graph","Graph-Gd","Prog-Gd","Son-Graph","Son-Prog","Son-Gd"],
			datasets : [
				{
					fillColor : "rgba(43,7,53,0.5)",
					strokeColor : "rgba(43,7,53,0.6)",
					highlightFill: "rgba(43,7,53,0.75)",
					highlightStroke: "rgba(43,7,53,8)",
					data : [randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor()]
				}
			]
		}

		var ctx = document.getElementById("bar").getContext("2d");
		window.myBar = new Chart(ctx).Bar(barChartData,{
			scaleShowGridLines : false,
			scaleShowLabels: false
			// barShowStroke : false
		});

	}

	//EVENT : FORMULAIRE
	if($("#inscription-event").length > 0){


		// Selection des options
		var $icon_form = $(".hi-icon");

		$('input').placeholder();
		$icon_form.click(function(e){

			e.preventDefault();
			if( $(this).hasClass('selected') ){
				$(this).removeClass('selected');
			}else{
				$(this).addClass('selected');

			}
		});

		// Vérification du formulaire
		IniInscription();

	}

});

function vider_form(tableau_doughnut){
	
	$("#envoi").val("Envoyer");
	$(".input-inscription ").val("");
	$(".hi-icon").removeClass("selected");

	for (var id in tableau_doughnut) {

		$("#"+id+"-nb").val(parseInt($("#"+id+"-nb").val())+tableau_doughnut[id]);
	}

	window.myDoughnut.segments[0].value = parseInt($("#gd-nb").val());
	window.myDoughnut.segments[1].value = parseInt($("#prog-nb").val());
	window.myDoughnut.segments[2].value = parseInt($("#graph-nb").val());
	window.myDoughnut.segments[3].value = parseInt($("#son-nb").val());
	window.myDoughnut.update();

	var nb_participant = $(".part_total p span").html();
	$(".part_total p span").empty().html(parseInt(nb_participant)+1);

}
