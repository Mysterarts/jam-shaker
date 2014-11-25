
// Fonction pour traiter le formulaire des inscriptions (page "event")
var IniInscription = function(){

	$("#inscription-event").submit(function(e){

		e.preventDefault();

		var $this = $(this); // formulaire $("#inscription-event")
		var $btn_envoi = $("#envoi");

		var $input = $(".input-inscription ");
		var $option = $(".hi-icon");

		var champs_non_rempli = false;
		var option_rempli = false;

		var tab_option = new Array();
		var id_place = $("#place").val();

		// Boucle pour regarder si tous les inputs sont remplis
		// Si ce n'est pas le cas :
		//    - ajout de la class "error" pour faire briller l'input en rouge
		//    - on met "champs_non_rempli" à "true" pour ne pas envoyer le formulaire
		$.each( $input, function( key, value ) {

			if( ( ($(this).val() == "") || ($(this).val().toLowerCase() === $(this).attr("placeholder").toLowerCase()) ) && value.name != "tel" ){

				if(!$(this).hasClass('error') ){
					$(this).addClass("error");
				}
		
				champs_non_rempli = true;

			}else{

				if( $(this).hasClass('error') ){
					$(this).removeClass("error");
				}
			}

		});

		// On regarde si l'internaute a bien coché au moins une option "gd", "prog", "graph", "son"
		// Si c'est le cas :
		//    - on supprime la class "error"
		//    - on met "option_rempli" à "true" pour prévenir qu'au moins une case a été coché
		// Sinon :
		//    - ajout de la class "error" pour faire briller les ronds en rouge
		if($(".hi-icon.selected").length > 0){

			option_rempli = true;
			
			if( $option.hasClass('error') ){
				$option.removeClass("error");
			}

		}else{

			if(!$option.hasClass('error') ){
				$option.addClass("error");
			}
		}

		// Si le fomulaire est correctement rempli :
		// On passe par chaque "option" ("gd", "prog", "graph", "son") pour remplir le tableau "tab_option"
		// Si l'option est coché, on met un 1 et on met l'étiquette correspondant à l'id de l'option
		// Si l'option n'est pas coché, on met un 0
		if(option_rempli && !champs_non_rempli){

			$.each( $option, function( key, value ) {

				if($(this).hasClass('selected') ){
					tab_option[$(this).attr("id")] = 1;
				}else{
					tab_option[$(this).attr("id")] = 0;

				}
			});

			var chaine_option ="";

			// Boucle permettant de remplir "chaine_option" : on parcours le tableau "tab_option"
			// Pour chaque case, on récupère l'étiquette de la case et sa valeur que l'on stocke dans "chaine_option"
			for (var id in tab_option) {
    
			    // alert(id+" "+tab_option[id]);
			    chaine_option += "&"+id+"="+tab_option[id];
			}

			// Appel de la fonction qui permettra de traiter le formulaire
			envoi_form($this, $this.serialize(), chaine_option, id_place, $btn_envoi, tab_option);
		}

		return false; // On
		
	});

}

// Fonction qui permet de traiter le formulaire en Ajax
// Params :
// formulaire : l'élément formulaire "form" du doc HTML
// donnees : les valeurs des différents inputs du formulaire
// chaine_option : la suite des valeurs du formulaire (les différentes options)
// place : l'id de la place où à lieu le jeu
// btnEnvoi : le bouton "ENVOYER" du formulaire
// tab_option : le tableau contenant les différentes options du formulaire
function envoi_form(formulaire, donnees, chaine_option, place, btnEnvoi, tab_option){

	var data = donnees+chaine_option+'&id_place='+place+'&act=envoi';
	btnEnvoi.val("envoi en cours...");

	$.ajax({
		type: "POST",
		data : data,
		url: "inscription/",
		success: function(retour) {

			var reponse = JSON.parse(retour);

			if(reponse.reussite){

				btnEnvoi.val("Votre inscription a été envoyé");
				setTimeout(vider_form(tab_option),3000); // Appel de la fonction "vider_form" situé dans "customs.js"

			}else{
				btnEnvoi.val("Envoyer");
				// On remet en rouge les inputs "mail" ou "tel" si la syntaxe est incorrect
				if(reponse.nom_echec == "mail"){
					$("#email").addClass('error');
				}else if(reponse.nom_echec == "tel"){
					$("#tel").addClass('error');
				}
			}
		}
	});
}
