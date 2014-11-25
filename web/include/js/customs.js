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


/***
 *     /$$      /$$ /$$$$$$$$ /$$   /$$ /$$   /$$       /$$$$$$$  /$$$$$$$$  /$$$$$$  /$$$$$$$   /$$$$$$  /$$   /$$  /$$$$$$  /$$$$$$ /$$    /$$ /$$$$$$$$      
 *    | $$$    /$$$| $$_____/| $$$ | $$| $$  | $$      | $$__  $$| $$_____/ /$$__  $$| $$__  $$ /$$__  $$| $$$ | $$ /$$__  $$|_  $$_/| $$   | $$| $$_____/      
 *    | $$$$  /$$$$| $$      | $$$$| $$| $$  | $$      | $$  \ $$| $$      | $$  \__/| $$  \ $$| $$  \ $$| $$$$| $$| $$  \__/  | $$  | $$   | $$| $$            
 *    | $$ $$/$$ $$| $$$$$   | $$ $$ $$| $$  | $$      | $$$$$$$/| $$$$$   |  $$$$$$ | $$$$$$$/| $$  | $$| $$ $$ $$|  $$$$$$   | $$  |  $$ / $$/| $$$$$         
 *    | $$  $$$| $$| $$__/   | $$  $$$$| $$  | $$      | $$__  $$| $$__/    \____  $$| $$____/ | $$  | $$| $$  $$$$ \____  $$  | $$   \  $$ $$/ | $$__/         
 *    | $$\  $ | $$| $$      | $$\  $$$| $$  | $$      | $$  \ $$| $$       /$$  \ $$| $$      | $$  | $$| $$\  $$$ /$$  \ $$  | $$    \  $$$/  | $$            
 *    | $$ \/  | $$| $$$$$$$$| $$ \  $$|  $$$$$$/      | $$  | $$| $$$$$$$$|  $$$$$$/| $$      |  $$$$$$/| $$ \  $$|  $$$$$$/ /$$$$$$   \  $/   | $$$$$$$$      
 *    |__/     |__/|________/|__/  \__/ \______/       |__/  |__/|________/ \______/ |__/       \______/ |__/  \__/ \______/ |______/    \_/    |________/      
 *                                                                                                                                                              
 *                                                                                                                                                              
 *                                                                                                                                                              
 */
// Le menu principale adapté pour mobile
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
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



$(document).ready(function() {


	/***
	 *     /$$$$$$$   /$$$$$$   /$$$$$$  /$$$$$$$$       /$$$$$$$$ /$$    /$$ /$$$$$$$$ /$$   /$$ /$$$$$$$$
	 *    | $$__  $$ /$$__  $$ /$$__  $$| $$_____/      | $$_____/| $$   | $$| $$_____/| $$$ | $$|__  $$__/
	 *    | $$  \ $$| $$  \ $$| $$  \__/| $$            | $$      | $$   | $$| $$      | $$$$| $$   | $$   
	 *    | $$$$$$$/| $$$$$$$$| $$ /$$$$| $$$$$         | $$$$$   |  $$ / $$/| $$$$$   | $$ $$ $$   | $$   
	 *    | $$____/ | $$__  $$| $$|_  $$| $$__/         | $$__/    \  $$ $$/ | $$__/   | $$  $$$$   | $$   
	 *    | $$      | $$  | $$| $$  \ $$| $$            | $$        \  $$$/  | $$      | $$\  $$$   | $$   
	 *    | $$      | $$  | $$|  $$$$$$/| $$$$$$$$      | $$$$$$$$   \  $/   | $$$$$$$$| $$ \  $$   | $$   
	 *    |__/      |__/  |__/ \______/ |________/      |________/    \_/    |________/|__/  \__/   |__/   
	 *                                                                                                     
	 *                                                                                                     
	 *                                                                                                     
	 */
	/***
	 *                                      
	 *                                      
	 *     /$$$$$$/$$$$   /$$$$$$   /$$$$$$ 
	 *    | $$_  $$_  $$ |____  $$ /$$__  $$
	 *    | $$ \ $$ \ $$  /$$$$$$$| $$  \ $$
	 *    | $$ | $$ | $$ /$$__  $$| $$  | $$
	 *    | $$ | $$ | $$|  $$$$$$$| $$$$$$$/
	 *    |__/ |__/ |__/ \_______/| $$____/ 
	 *                            | $$      
	 *                            | $$      
	 *                            |__/      
	 */

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

	/***
	 *                         /$$                                                     /$$                               /$$                             /$$    
	 *                        | $$                                                    | $$                              | $$                            | $$    
	 *      /$$$$$$$  /$$$$$$$| $$$$$$$   /$$$$$$  /$$$$$$/$$$$   /$$$$$$         /$$$$$$$  /$$$$$$  /$$   /$$  /$$$$$$ | $$$$$$$  /$$$$$$$  /$$   /$$ /$$$$$$  
	 *     /$$_____/ /$$_____/| $$__  $$ /$$__  $$| $$_  $$_  $$ |____  $$       /$$__  $$ /$$__  $$| $$  | $$ /$$__  $$| $$__  $$| $$__  $$| $$  | $$|_  $$_/  
	 *    |  $$$$$$ | $$      | $$  \ $$| $$$$$$$$| $$ \ $$ \ $$  /$$$$$$$      | $$  | $$| $$  \ $$| $$  | $$| $$  \ $$| $$  \ $$| $$  \ $$| $$  | $$  | $$    
	 *     \____  $$| $$      | $$  | $$| $$_____/| $$ | $$ | $$ /$$__  $$      | $$  | $$| $$  | $$| $$  | $$| $$  | $$| $$  | $$| $$  | $$| $$  | $$  | $$ /$$
	 *     /$$$$$$$/|  $$$$$$$| $$  | $$|  $$$$$$$| $$ | $$ | $$|  $$$$$$$      |  $$$$$$$|  $$$$$$/|  $$$$$$/|  $$$$$$$| $$  | $$| $$  | $$|  $$$$$$/  |  $$$$/
	 *    |_______/  \_______/|__/  |__/ \_______/|__/ |__/ |__/ \_______/       \_______/ \______/  \______/  \____  $$|__/  |__/|__/  |__/ \______/    \___/  
	 *                                                                                                         /$$  \ $$                                        
	 *                                                                                                        |  $$$$$$/                                        
	 *                                                                                                         \______/                                         
	 */

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

	/***
	 *                         /$$                                               /$$                          
	 *                        | $$                                              | $$                          
	 *      /$$$$$$$  /$$$$$$$| $$$$$$$   /$$$$$$  /$$$$$$/$$$$   /$$$$$$       | $$$$$$$   /$$$$$$   /$$$$$$ 
	 *     /$$_____/ /$$_____/| $$__  $$ /$$__  $$| $$_  $$_  $$ |____  $$      | $$__  $$ |____  $$ /$$__  $$
	 *    |  $$$$$$ | $$      | $$  \ $$| $$$$$$$$| $$ \ $$ \ $$  /$$$$$$$      | $$  \ $$  /$$$$$$$| $$  \__/
	 *     \____  $$| $$      | $$  | $$| $$_____/| $$ | $$ | $$ /$$__  $$      | $$  | $$ /$$__  $$| $$      
	 *     /$$$$$$$/|  $$$$$$$| $$  | $$|  $$$$$$$| $$ | $$ | $$|  $$$$$$$      | $$$$$$$/|  $$$$$$$| $$      
	 *    |_______/  \_______/|__/  |__/ \_______/|__/ |__/ |__/ \_______/      |_______/  \_______/|__/      
	 *                                                                                                        
	 *                                                                                                        
	 *                                                                                                        
	 */

	if($("#bar").length > 0) {

		var barLabels = new Array();
		var barValues = new Array();

		var barData = JSON.parse($("#bar-data").val());

		jQuery.each(barData, function(key, val) {
			barLabels.push(key);
   			barValues.push(val);
		});

		var barChartData = {
			labels : barLabels,
			datasets : [
				{
					fillColor : "rgba(43,7,53,0.5)",
					strokeColor : "rgba(43,7,53,0.6)",
					highlightFill: "rgba(43,7,53,0.75)",
					highlightStroke: "rgba(43,7,53,8)",
					data : barValues
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

	/***
	 *      /$$$$$$                                              /$$           /$$                    
	 *     /$$__  $$                                            | $$          |__/                    
	 *    | $$  \__/  /$$$$$$   /$$$$$$  /$$$$$$/$$$$  /$$   /$$| $$  /$$$$$$  /$$  /$$$$$$   /$$$$$$ 
	 *    | $$$$     /$$__  $$ /$$__  $$| $$_  $$_  $$| $$  | $$| $$ |____  $$| $$ /$$__  $$ /$$__  $$
	 *    | $$_/    | $$  \ $$| $$  \__/| $$ \ $$ \ $$| $$  | $$| $$  /$$$$$$$| $$| $$  \__/| $$$$$$$$
	 *    | $$      | $$  | $$| $$      | $$ | $$ | $$| $$  | $$| $$ /$$__  $$| $$| $$      | $$_____/
	 *    | $$      |  $$$$$$/| $$      | $$ | $$ | $$|  $$$$$$/| $$|  $$$$$$$| $$| $$      |  $$$$$$$
	 *    |__/       \______/ |__/      |__/ |__/ |__/ \______/ |__/ \_______/|__/|__/       \_______/
	 *                                                                                                
	 *                                                                                                
	 *                                                                                                
	 */
	if($("#inscription-event").length > 0){


		// Selection des options
		var $icon_form = $(".hi-icon");

		$('input').placeholder();

		// Si on clique sur une option, on lui ajoute ou supprime la class "selected" selon s'il l'a déjà ou non
		$icon_form.click(function(e){

			e.preventDefault();
			if( $(this).hasClass('selected') ){
				$(this).removeClass('selected');
			}else{
				$(this).addClass('selected');

			}
		});

		// Écouteur sur le formulaire et traitement de celui-ci
		IniInscription();

	}


	/***
	 *     /$$$$$$$   /$$$$$$   /$$$$$$  /$$$$$$$$          /$$$$$ /$$$$$$$$ /$$   /$$ /$$   /$$
	 *    | $$__  $$ /$$__  $$ /$$__  $$| $$_____/         |__  $$| $$_____/| $$  | $$| $$  / $$
	 *    | $$  \ $$| $$  \ $$| $$  \__/| $$                  | $$| $$      | $$  | $$|  $$/ $$/
	 *    | $$$$$$$/| $$$$$$$$| $$ /$$$$| $$$$$               | $$| $$$$$   | $$  | $$ \  $$$$/ 
	 *    | $$____/ | $$__  $$| $$|_  $$| $$__/          /$$  | $$| $$__/   | $$  | $$  >$$  $$ 
	 *    | $$      | $$  | $$| $$  \ $$| $$            | $$  | $$| $$      | $$  | $$ /$$/\  $$
	 *    | $$      | $$  | $$|  $$$$$$/| $$$$$$$$      |  $$$$$$/| $$$$$$$$|  $$$$$$/| $$  \ $$
	 *    |__/      |__/  |__/ \______/ |________/       \______/ |________/ \______/ |__/  |__/
	 *                                                                                          
	 *                                                                                          
	 *                                                                                          
	 */
	// Affichage de la description d'un jeu quand on clique sur son image
	if($("#grille-jeux").length > 0){

		var $item_global = $(".item-jeu"); // On stocke tous les "li" contenant les jeux
		var $item_liens = $(".item-jeu .lien_jeu"); // On stocke tous les liens "a" de chaque jeu
		var $fleche_dessous_liens = $(".fleche"); // On stocke la flèche qui se trouve en dessous de chaque lien (flèche qui permet d'indiquer à quel jeu correspond la description affichée)

		var hauteur_item_ouvert_partieFixe = $fleche_dessous_liens.height()+ $item_liens.height(); // On récupère la hauteur du bloc contenant la flèche grise (10px) + la hauteur des liens "a" des jeux (250px)
																								   // Ces deux hauteurs ne changent pas car elles sont toujours fixes. Ces valeurs sont à prendre en compte dans la hauteur total du bloc "li" qui affiche la description du jeu

		var hauteur_item_close = $item_liens.height()+"px"; // On stocke la hauteur des "li" quand ils sont fermés cad que la description du jeu n'est pas affichée
														 	// Il y a juste le lien "a" ayant pour class ".lien_jeu" d'affiché et il a une hauteur de 250px
	
		// Quand on redimenssionne la fenêtre : si un élément "li" est ouvert pour afficher la description d'un jeu
		// Il se peut que sa hauteur change (car le texte a moins de place en largeur donc il s'aggrandit en hauteur)
		// Donc ici on remet la bonne hauteur pour le "li" en fonction de la taille du bloc contenant le texte descriptif
		$(window).resize(function() {
			
			if($(".item-jeu.selected").length > 0 ){
				var taille_bloc_desc = $(".item-jeu.selected").children(".desc-jeu").children(".contenu-desc").innerHeight();
				var taille_finale_bloc = hauteur_item_ouvert_partieFixe + taille_bloc_desc +"px";
				$(".item-jeu.selected").height(taille_finale_bloc);
			}
		});

		$item_liens.click(function(e){ // Quand on clique sur un lien "a" pour afficher un jeu

			e.preventDefault(); // On annule l'action par défaut du lien "a"
		
			var $this = $(this); // on garde l'élément "a" cliqué contenu dans "li.item-jeu"
			var $elt_li = $this.parent(".item-jeu"); // on garde l'élément "li.item-jeu" correspondant au lien cliqué
			var $elt_description = $this.next(".desc-jeu"); // on garde l'élément "div.desc-jeu" correspondant au lien cliqué
			var $contenu_description = $(this).next(".desc-jeu").children(".contenu-desc"); // on stocke la div contenant la description du jeu cliqué

			
			// CALCUL POUR SAVOIR COMBIEN IL Y A DE JEUX PAR LIGNE (COMBIEN DE CARRÉ PAR LIGNE)
			var taille_grille = $(".grille-jeux").width(); // taille du bloc 'ul' qui correspond à la largeur du navigateur (dans scss = width :100%;)
			var taille_li = $item_global.outerWidth(true); // Taille du bloc "li" y compris avec les marges (grâce à l'option "true"), soit "10px+250px+10px"
			var nb_elt_ligne = Math.floor(taille_grille/taille_li); // Nombre d'élément (de jeux) par ligne (on prend l'entier inférieur)

			var animation_bloc = true; // Booléen pour savoir s'il faut faire une animation d'ouverture pour montrer la description d'un jeu

			// S'il y a déjà un bloc "li" séléectionnée (qui a la class "selected") cad un "li" déjà ouvert
			if($(".item-jeu.selected").length > 0 ){
				
				// Si le bloc "li" qui a la class 'selected' correspond au bloc qui vient d'être cliqué
				// Alors cela signifie qu'il faut juste refermer le bloc
				if($elt_li.hasClass("selected")){
					
					fermeture_description_animee($elt_description, $elt_li, hauteur_item_close);

					animation_bloc = false; // Pour ne pas ouvrir à nouveau le bloc cliqué car ici on doit juste le refermer

				// Si le bloc "li" qui a la class 'selected' ne correspond pas au bloc qui vient d'être cliqué
				// Mais que ce bloc est sur la même ligne que le bloc cliqué ET que ce bloc fait partie du même conteneur "ul.grille-jeux"
					// Pour savoir si le bloc est sur la même ligne :
					// index() permet de connaitre la position des blocs
					// Le premier "li" affiché a l'index 0, le second "li" affiché a l'index 1....
					// En divisant l'index du bloc par le nombre de bloc sur chaque ligne, je peux savoir si le bloc est sur la ligne 0, 1,...
					// Comme quand on fait une boucle pour placer les éléments les uns en dessous des autres (ex : au bout de 5 éléments affiché les uns à côté des autres, on retourne à la ligne)
				// Si le bloc est sur la même ligne alors on ne fait pas d'animation de fermeture de bloc, ni d'animation d'ouverture de bloc
				}else if( (Math.floor($(".item-jeu.selected").index()/nb_elt_ligne) == Math.floor($elt_li.index()/nb_elt_ligne)) && ($(".item-jeu.selected").parent(".grille-jeux").index() == $elt_li.parent(".grille-jeux").index())){
					
					// On referme l'ancien bloc sans animation
					// On ouvre le nouveau bloc sans animation
					$elt_description.css("display", "block");
					var taille_finale_bloc = hauteur_item_ouvert_partieFixe + $contenu_description.innerHeight()+"px"; // Maintenant que le contenu est en "display : block", on peut connaitre sa hauteur
					$elt_li.height(taille_finale_bloc);

					$(".item-jeu.selected").height(hauteur_item_close);
					$(".item-jeu.selected .desc-jeu").css({display: "none", opacity:0});
					$(".item-jeu.selected").removeClass("selected");
					
					$elt_li.addClass("selected");
					$elt_description.fadeTo(200, 1);
					$.scrollTo($elt_li, 200); // on met le haut de la fenêtre "$(window)" à la même hauteur que le "li" cliqué

					animation_bloc = false; // Pour ne pas ouvrir à nouveau le bloc cliqué car ici on ne pas pas faire d'animation d'ouverture
				
				// Sinon le bloc "li" qui a la class "selected" n'est pas sur la même ligne que le bloc cliqué
				// On le referme donc avec une animation
				}else{

					fermeture_description_animee($(".item-jeu.selected .desc-jeu"), $(".item-jeu.selected"), hauteur_item_close);
				}

			}

			// On anime l'ouverture du bloc cliqué
			// Soit c'est parce que c'est le tout premier bloc a avoir été cliqué
			// Soit parce que ce bloc n'est pas sur la même ligne du bloc précédemment ouvert
			if(animation_bloc){
				
				$elt_description.css("display", "block");

				var taille_finale_bloc = hauteur_item_ouvert_partieFixe + $contenu_description.innerHeight()+"px"; // Maintenant que le contenu est en "display : block", on peut connaitre sa hauteur

				$elt_li.stop().animate({
					height: taille_finale_bloc
				}, 300, function(){
					// Animation complete.
					$elt_li.addClass("selected");
					$elt_description.fadeTo(200, 1);

					// Animation pour mettre le "li" sélectionné en haut de la page du navigateur
					$.scrollTo($elt_li, 200);
					// $('html, body').animate({scrollTop: $elt_li.offset().top}, 'slow');
					// $("html, body").animate({ scrollTop: $elt_li.offset().top+"px" },300);
					// $("html, body").animate({ scrollTop: $elt_description.offset().top-50+"px" },300);
					// $(window).scrollTop($elt_li.offset().top);
					// alert($elt_description.offset().top);
					// $(window).scrollTop($elt_description.offset().top-50);
				});
			}

		});

		// Quand on clique sur la petite croix de fermeture contenu à l'intérieur de la description d'un jeu
		$(".icon-close").click(function(e){

			e.preventDefault();
			var $conteneur_global = $(this).parents().eq(2); // On récupère le troisième parent de l'élément $(this) cad l'élément "li.item-jeu"

			fermeture_description_animee($conteneur_global.children(".desc-jeu"),$conteneur_global , hauteur_item_close);
			
		});
	}

});

/***
 *      /$$$$$$                                  /$$     /$$                            /$$$$$$                                                /$$                                         /$$       /$$                                                        
 *     /$$__  $$                                | $$    |__/                           /$$__  $$                                              | $$                                        | $$      | $$                                                        
 *    | $$  \__/  /$$$$$$  /$$$$$$$   /$$$$$$$ /$$$$$$   /$$  /$$$$$$  /$$$$$$$       | $$  \__/  /$$$$$$   /$$$$$$  /$$$$$$/$$$$   /$$$$$$  /$$$$$$   /$$   /$$  /$$$$$$   /$$$$$$       | $$$$$$$ | $$  /$$$$$$   /$$$$$$$             /$$  /$$$$$$  /$$   /$$
 *    | $$$$     /$$__  $$| $$__  $$ /$$_____/|_  $$_/  | $$ /$$__  $$| $$__  $$      | $$$$     /$$__  $$ /$$__  $$| $$_  $$_  $$ /$$__  $$|_  $$_/  | $$  | $$ /$$__  $$ /$$__  $$      | $$__  $$| $$ /$$__  $$ /$$_____/            |__/ /$$__  $$| $$  | $$
 *    | $$_/    | $$  \ $$| $$  \ $$| $$        | $$    | $$| $$  \ $$| $$  \ $$      | $$_/    | $$$$$$$$| $$  \__/| $$ \ $$ \ $$| $$$$$$$$  | $$    | $$  | $$| $$  \__/| $$$$$$$$      | $$  \ $$| $$| $$  \ $$| $$                   /$$| $$$$$$$$| $$  | $$
 *    | $$      | $$  | $$| $$  | $$| $$        | $$ /$$| $$| $$  | $$| $$  | $$      | $$      | $$_____/| $$      | $$ | $$ | $$| $$_____/  | $$ /$$| $$  | $$| $$      | $$_____/      | $$  | $$| $$| $$  | $$| $$                  | $$| $$_____/| $$  | $$
 *    | $$      |  $$$$$$/| $$  | $$|  $$$$$$$  |  $$$$/| $$|  $$$$$$/| $$  | $$      | $$      |  $$$$$$$| $$      | $$ | $$ | $$|  $$$$$$$  |  $$$$/|  $$$$$$/| $$      |  $$$$$$$      | $$$$$$$/| $$|  $$$$$$/|  $$$$$$$            | $$|  $$$$$$$|  $$$$$$/
 *    |__/       \______/ |__/  |__/ \_______/   \___/  |__/ \______/ |__/  |__/      |__/       \_______/|__/      |__/ |__/ |__/ \_______/   \___/   \______/ |__/       \_______/      |_______/ |__/ \______/  \_______/            | $$ \_______/ \______/ 
 *                                                                                                                                                                                                                                 /$$  | $$                    
 *                                                                                                                                                                                                                                |  $$$$$$/                    
 *                                                                                                                                                                                                                                 \______/                     
 */

var fermeture_description_animee = function(bloc_description, bloc_li, hauteur_bloc_ferme){

	bloc_description.css({display: "none", opacity:0}); // On fait disparaître le bloc contenant la description du jeu

	// On anime la hauteur du bloc "li" pour le remettre à la hauteur initiale (juste pour voir le lien ".lien_jeu")
	// Et à la fin de l'animation, on enlève la class 'selected' du bloc "li"
	bloc_li.stop().animate({
		height: hauteur_bloc_ferme
	}, 300, function(){
		// Animation complete.
		bloc_li.removeClass("selected");
	});
}


/***
 *      /$$$$$$                                  /$$     /$$                            /$$$$$$                                              /$$           /$$                    
 *     /$$__  $$                                | $$    |__/                           /$$__  $$                                            | $$          |__/                    
 *    | $$  \__/  /$$$$$$  /$$$$$$$   /$$$$$$$ /$$$$$$   /$$  /$$$$$$  /$$$$$$$       | $$  \__/  /$$$$$$   /$$$$$$  /$$$$$$/$$$$  /$$   /$$| $$  /$$$$$$  /$$  /$$$$$$   /$$$$$$ 
 *    | $$$$     /$$__  $$| $$__  $$ /$$_____/|_  $$_/  | $$ /$$__  $$| $$__  $$      | $$$$     /$$__  $$ /$$__  $$| $$_  $$_  $$| $$  | $$| $$ |____  $$| $$ /$$__  $$ /$$__  $$
 *    | $$_/    | $$  \ $$| $$  \ $$| $$        | $$    | $$| $$  \ $$| $$  \ $$      | $$_/    | $$  \ $$| $$  \__/| $$ \ $$ \ $$| $$  | $$| $$  /$$$$$$$| $$| $$  \__/| $$$$$$$$
 *    | $$      | $$  | $$| $$  | $$| $$        | $$ /$$| $$| $$  | $$| $$  | $$      | $$      | $$  | $$| $$      | $$ | $$ | $$| $$  | $$| $$ /$$__  $$| $$| $$      | $$_____/
 *    | $$      |  $$$$$$/| $$  | $$|  $$$$$$$  |  $$$$/| $$|  $$$$$$/| $$  | $$      | $$      |  $$$$$$/| $$      | $$ | $$ | $$|  $$$$$$/| $$|  $$$$$$$| $$| $$      |  $$$$$$$
 *    |__/       \______/ |__/  |__/ \_______/   \___/  |__/ \______/ |__/  |__/      |__/       \______/ |__/      |__/ |__/ |__/ \______/ |__/ \_______/|__/|__/       \_______/
 *                                                                                                                                                                                
 *                                                                                                                                                                                
 *                                                                                                                                                                                
 */
// Fonction appelée après que le traitement du formulaire d'inscription soit bien effectué
// Elle permet de mettre à jour :
//   - le doughnut en incrémentant la valeur déjà présente pour chaque option coché par celui qui s'est inscrit
//   - le nombre de participant total
// Param :
// tableau_doughnut : c'est "tab_option" qui contient les options cochés par celui qui s'est inscrit
function vider_form(tableau_doughnut){
	
	// On vide tous les champs du formulaire et on désélectionne les options
	$("#envoi").val("Envoyer");
	$(".input-inscription ").val("");
	$(".hi-icon").removeClass("selected");

	// On change la valeur des attributs "value" de chaque "input" représentant le doughnut
	for (var id in tableau_doughnut) {

		$("#"+id+"-nb").val(parseInt($("#"+id+"-nb").val())+tableau_doughnut[id]);
	}

	// On actualise les valeurs du doughnut
	window.myDoughnut.segments[0].value = parseInt($("#gd-nb").val());
	window.myDoughnut.segments[1].value = parseInt($("#prog-nb").val());
	window.myDoughnut.segments[2].value = parseInt($("#graph-nb").val());
	window.myDoughnut.segments[3].value = parseInt($("#son-nb").val());
	window.myDoughnut.update(); // on le met à jour en s'animant

	// On incrémente le "1" le nombre de participant
	var nb_participant = $(".part_total p span").html();
	$(".part_total p span").empty().html(parseInt(nb_participant)+1);

}
