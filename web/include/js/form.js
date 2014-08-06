
var IniInscription = function(){

	$("#inscription-event").submit(function(e){

		e.preventDefault();

		var $this = $(this);
		var $btn_envoi = $("#envoi");

		var $input = $(".input-inscription ");
		var $option = $(".hi-icon");
		var champs_non_rempli = false;
		var option_rempli = false;

		var tab_option = new Array();
		var id_place = $("#place").val();

		$.each( $input, function( key, value ) {

			if( ($(this).val() == "") || ($(this).val().toLowerCase() === $(this).attr("placeholder").toLowerCase()) ){

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

		if(option_rempli && !champs_non_rempli){

			$.each( $option, function( key, value ) {

				if($(this).hasClass('selected') ){
					tab_option[$(this).attr("id")] = 1;
				}else{
					tab_option[$(this).attr("id")] = 0;

				}
			});

			// for (var id in tab_option) { // On stocke l'identifiant dans « id » pour parcourir l'objet « family »
    
			//     alert(id+" "+tab_option[id]);
			        
			// }

			envoi_form($this, $this.serialize(), tab_option, id_place, $btn_envoi);
		}

		return false;
		
	});

}

function envoi_form(formulaire, donnees, tab_option, place, btnEnvoi){

	var data = donnees+'&gd='+tab_option["gd"]+'&prog='+tab_option["prog"]+'&graph='+tab_option["graph"]+'&son='+tab_option["son"]+'&id_place='+place+'&act=envoi';
	btnEnvoi.val("envoi en cours...");

	$.ajax({
		type: "POST",
		data : data,
		url: "inscription/",
		success: function(retour) {

			var reponse = JSON.parse(retour);

			if(reponse.reussite){

				btnEnvoi.val("Votre inscription a été envoyé");
				setTimeout("vider_form()",3000);

			}else{
				btnEnvoi.val("Envoyer");

				if(reponse.nom_echec == "mail"){
					$("#email").addClass('error');
				}else if(reponse.nom_echec == "tel"){
					$("#tel").addClass('error');
				}
			}
		}
	});
}