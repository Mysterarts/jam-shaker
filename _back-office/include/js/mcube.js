/*
########   ##     ##  ##    ##    ######    ########   ####   #######   ##    ##    ######    
##         ##     ##  ###   ##   ##    ##      ##       ##   ##     ##  ###   ##   ##    ##   
##         ##     ##  ####  ##   ##            ##       ##   ##     ##  ####  ##   ##         
######     ##     ##  ## ## ##   ##            ##       ##   ##     ##  ## ## ##    ######    
##         ##     ##  ##  ####   ##            ##       ##   ##     ##  ##  ####         ##   
##         ##     ##  ##   ###   ##    ##      ##       ##   ##     ##  ##   ###   ##    ##   
##          #######   ##    ##    ######       ##      ####   #######   ##    ##    ######    
*/












/*
########    #######   ##     ##       ########   ########      ###     ########   ##    ##   
##     ##  ##     ##  ###   ###       ##     ##  ##           ## ##    ##     ##   ##  ##    
##     ##  ##     ##  #### ####       ##     ##  ##          ##   ##   ##     ##    ####     
##     ##  ##     ##  ## ### ##       ########   ######     ##     ##  ##     ##     ##      
##     ##  ##     ##  ##     ##       ##   ##    ##         #########  ##     ##     ##      
##     ##  ##     ##  ##     ##       ##    ##   ##         ##     ##  ##     ##     ##      
########    #######   ##     ##       ##     ##  ########   ##     ##  ########      ##      
*/

/**
 * Fastclick
 */
window.addEventListener('load', function() {
	FastClick.attach(document.body);
}, false);

/**
 * jQuery stuff
 */
$(document).ready(function() {

	/**
	 * Test si les Media Queries sont supportées
	 * Ajoute la classe 'mq' au tag HTML si c'est le cas
	 */
	if ( Modernizr.mq('only all') ) {
		jQuery('html').addClass('mq');
	} else {
		jQuery('html').addClass('no-mq');
	}

	/**
	 * Browser detect : masquage de la bannière
	 */
	$('.browserdetect__close').click(function(e) {
		e.preventDefault();
		$('.browserdetect').addClass('browserdetect--hidden');
	});

	//--------------------------------------------------------------------------------//
	//---------- MENU PRINCIPAL DE L'ADMINISTRATION - PLUGIN RESPONSIVE NAV ----------//
	//--------------------------------------------------------------------------------//
	var nav = responsiveNav(".menu-admin ul", { // Selector
		animate: true, // Boolean: Use CSS3 transitions, true or false
		transition: 284, // Integer: Speed of the transition, in milliseconds
		label: "Menu", // String: Label for the navigation toggle
		insert: "after"
	});
	//--------------------------------------------------------------------------------//

	//--------------------------------------------------------------------------------//
	//------- CHAMPS DATE DANS LE FORMULAIRE D'ADMINISTRATION - PLUGIN PIKADAY -------//
	//--------------------------------------------------------------------------------//
	var picker = new Pikaday({
        field: document.getElementById('datepicker'),
        firstDay: 1,
        format: 'DD / MM / YYYY',
        minDate: new Date('2015-01-01'),
        maxDate: new Date('2020-12-31'),
        yearRange: [2015,2020],
		// onSelect: function() {
		// 	// console.log(this.getMoment().format('Do MMMM YYYY'));
		// }
    });
	//--------------------------------------------------------------------------------//
	//--------------------------------------------------------------------------------//


	//--------------------------------------------------------------------------------//
	//------------------- TEXTAREA PERSONNALISÉ - PLUGIN FCKEDITOR -------------------//
	//--------------------------------------------------------------------------------//
	// MÉTHODE JAVASCRIPT NATIF
	// Ici "fckeditor" correspond à la valeur de l'attribut "name" de textarea
	// CKEDITOR.replace( 'fckeditor',
	//  	{
	// 		customConfig : '../../cms-conf/ckeditor/ckeditor_config.js'
	// 	}
	// );
	// MÉTHODE JAVASCRIPT AVEC JQUERY
	$('textarea.fckeditor').ckeditor(
		{
        	customConfig : '../../cms-conf/ckeditor/ckeditor_config.js'
    	}
    );

    // alert(CKEDITOR.basePath);
	//--------------------------------------------------------------------------------//
	//--------------------------------------------------------------------------------//

	$(".btn-action-form").click(function(e){
		e.preventDefault();
		var data = $('textarea.fckeditor').val();
		alert(data);
	});

	//--------------------------------------------------------------------------------//
	//------------------- GOOGLE MAP POUR FORMULAIRE ADMINISTRATION ------------------//
	//--------------------------------------------------------------------------------//
	if($("#map").length > 0) {

		var draggable = false;
		var $lat = $("#map-lat");
		var $lng = $("#map-lng");
		var $zoom = $("#map-zoom");

		var map = new GMaps({
			zoomControlOpt: {
            style : 'SMALL',
            position: 'TOP_RIGHT'
        },

			options: {
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
					      { "saturation": -100 }
					    ]
					  },{
					    "featureType": "poi",
					    "stylers": [
					      { "saturation": -100 }
					    ]
					  },{
					    "featureType": "road.local",
					    "stylers": [
					      { "saturation": -100 }
					    ]
					  },{
					    "featureType": "road.highway",
					    "stylers": [
					      { "invert_lightness": true },
					      { "hue": "#ff5e00" },
					      { "lightness": 39 },
					      { "saturation": -84 }
					    ]
					  },{
					    "featureType": "road.arterial",
					    "stylers": [
					      { "lightness": 50 },
					      { "hue": "#ff5500" },
					      { "saturation": -87 }
					    ]
					  },{
					    "featureType": "transit",
					    "stylers": [
					      { "hue": "#ffbb00" }
					    ]
 					  },{
					    "featureType": "water",
					    "stylers": [
					      { "color": "#7da7d9" }
					    ]
					  },{
					  }
					]

		},


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
   //--------------------------------------------------------------------------------//
   //--------------------------------------------------------------------------------//

});