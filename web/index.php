<?php
 /**
 * Example Application

 * @package Example-application
 */

require '../_CMS/_libs/Smarty.class.php';

$smarty = new Smarty;

require('include/php/connexion.php');

//A changer lors du déménagement !
define('BASE_URL', getBaseUrl());

$tpl = 'main.tpl';

$meta["title"]       = "Jam Shaker";
$meta["description"] = "";
$meta["keywords"]    = "";

$content = null;
if(isset($_GET['content'])){
	$content = $_GET['content'];
}

$core = null;

switch($content) {

	case "jeux":

		$meta["title"] = "Jam Shaker - Jeux";
		$meta["description"] = "Jam Shaker - Jeux";
		$meta["keywords"] = "Jam Shaker - Jeux";
		
		// On récupère tous les events
		$sQuery = 'SELECT id,name FROM js_events';
		$mysql_rs = mysql_query($sQuery, $mysql_ressource) or die(mysql_error());

		$core->Events = array();

		if(mysql_num_rows($mysql_rs) > 0){

			while($aRow = mysql_fetch_array($mysql_rs)){

				$event_id = $aRow["id"]; // On stocke l'id de l'event en train d'être traité

				// Seconde requête pour récupérer tous les jeux correspondant à l'event
				$sQuery_second = 'SELECT * FROM js_games WHERE id_event ="'.$event_id.'"';
				$mysql_rs_second = mysql_query($sQuery_second, $mysql_ressource) or die(mysql_error());

				if(mysql_num_rows($mysql_rs_second) > 0){

					$tableau_temp = array();

					// Boucle pour stocker toutes les jeux de l'événement dans le tableau "tableau_temp"
					while($i = mysql_fetch_array($mysql_rs_second)){
						array_push($tableau_temp, $i);
					}

					// On place le tableau "tableau_temp" dans $aRow["places"]
					// Ainsi on connait l'étiquette du tableau $aRow qui contient les tableaux des jeux
					$aRow["jeux"] = $tableau_temp;
				}

				// On stocke les valeurs de l'événement et les différents jeux de l'évènement dans "$core->Events"
				array_push($core->Events, $aRow);
			}
		}

	break;

	case "events":
		$meta["title"] = "Jam Shaker - Évènements - Events";
		$meta["description"] = "Jam Shaker - Évènements - Events";
		$meta["keywords"] = "Jam Shaker - Évènements - Events";

		// Si l'utilisateur a cliqué sur le sous-menu "archive" : on récupère tous les événements qui ont eu lieu "aujourd'hui - 15 jours"
		if(!empty($_GET['archive'])){

			$sQuery = 'SELECT * FROM js_events WHERE date_end < DATE_ADD(NOW(), INTERVAL 15 DAY) ORDER BY date_start DESC';
			$core->sousMenu = "archives";

		// Sinon on prends tous les événèments qui commencé "aujourd'hui - 15 jours"
		}else{
			$sQuery = 'SELECT * FROM js_events WHERE date_end >= DATE_ADD(NOW(), INTERVAL 15 DAY) ORDER BY date_start DESC';
			$core->sousMenu = "a_venir";
		}
		
		$mysql_rs = mysql_query($sQuery, $mysql_ressource) or die(mysql_error());
		$core->Events = array();
		
		// Si la requête s'est bien passé (s'il y a eu une réponse) :
		if(mysql_num_rows($mysql_rs) > 0){

			// Boucle pour récupérer tous les événements et les stocker dans "$core->Events"
			while($aRow = mysql_fetch_array($mysql_rs)){

				// On récupère l'id de l'événement en cours de traitement pour aller chercher toutes les places correspondants à cet événement
				$event_id = $aRow["id"];
				// echo $event_id;
				$sQuery_second = 'SELECT * FROM js_places WHERE id_event ="'.$event_id.'"';
				$mysql_rs_second = mysql_query($sQuery_second, $mysql_ressource) or die(mysql_error());

				// Si la requête s'est bien passé (s'il y a eu une réponse cad s'il y a eu des places pour l'évènement) :
				if(mysql_num_rows($mysql_rs_second) > 0){

					// Si il y a une seule place pour l'évènement demandé :
					if(mysql_num_rows($mysql_rs_second) == 1){

						$aRow["PlusieursPlaces"] = false;
						$aRow["places"] = mysql_fetch_array($mysql_rs_second);

					}else{ // Sinon il y a plusieurs places

						$aRow["PlusieursPlaces"] = true;

						$tableau_temp = array();

						// Boucle pour stocker toutes les places où ont lieux l'événement dans le tableau "tableau_temp"
						while($i = mysql_fetch_array($mysql_rs_second)){
							array_push($tableau_temp, $i);
						}

						// On place le tableau "tableau_temp" dans $aRow["places"]
						// Ainsi on connait l'étiquette du tableau $aRow qui contient les tableaux des places
						$aRow["places"] = $tableau_temp;
					}

				}

				// On stocke les valeurs de l'événement et les différentes places de l'évènement dans "$core->Events"
				array_push($core->Events, $aRow);
			}

		}
		

	break;

	case "event":
		$meta["title"] = "Jam Shaker - Évènement - Event";
		$meta["description"] = "Jam Shaker - Évènement - Event ?";
		$meta["keywords"] = "Jam Shaker - Évènement - Event";
		$content = "event";

		// On récupère l'url de l'événement
		$event = null;
		if(!empty($_GET['event'])){
			$event = $_GET['event'];
		}

		$sQuery = 'SELECT * FROM js_events WHERE url="'.$event.'"';
		$mysql_rs = mysql_query($sQuery, $mysql_ressource) or die(mysql_error());
		
		$core->EmptyDisplay = false;

		// Si la requête s'est bien passée et qu'il y a l'événement demandé
		if(mysql_num_rows($mysql_rs) > 0){
			$core->Event = mysql_fetch_array($mysql_rs);
		}else{
			//Si aucune place, afficher une erreur (voir le template event)
			$core->EmptyDisplay = true;
		}

		// On récupère l'url de la place où se passe l'événement (l'une des places de l'événement s'il y en a plusieurs)
		$place = null;
		if(!empty($_GET['place'])){
			$place = $_GET['place'];
		}

		$event_id = $core->Event["id"];

		$sQuery = 'SELECT * FROM js_places WHERE id_event="'.$event_id.'" AND url="'.$place.'"';
		$mysql_rs = mysql_query($sQuery, $mysql_ressource) or die(mysql_error());

		// Si la requête s'est bien passée et que la place demandée existe bien
		if(mysql_num_rows($mysql_rs) > 0){

			$core->Place = mysql_fetch_array($mysql_rs);

		}else{
			
			//Si pas de place précisée, aller chercher la première place de cet event
			$sQuery = 'SELECT * FROM js_places WHERE id_event="'.$event_id.'" LIMIT 0,1';
			$mysql_rs = mysql_query($sQuery, $mysql_ressource) or die(mysql_error());

			// Si la requête s'est bien passé et qu'il y a une place
			if(mysql_num_rows($mysql_rs) > 0){
				$core->Place = mysql_fetch_array($mysql_rs);
			}else{
				//Si aucune place pour cet event, afficher une erreur (voir le template event)
				$core->EmptyDisplay = true;
			}
		}

		$core->Nb_Participant = array();

		// On compte pour une place donné d'un événement précis :
		//   - le nombre de gd total
		//   - le nombre de prog total
		//   - le nombre de graph total
		//   - le nombre de son total
		//   - le nombre de participant total			
		$sQuery = 'SELECT SUM(r_gd) as GD_total, SUM(r_prog) as PROG_total, SUM(r_graph) as GRAPH_total, SUM(r_sound) as SON_total, COUNT(DISTINCT name) as NB_total FROM js_participants WHERE id_places="'.$core->Place["id"].'"';
		$mysql_rs = mysql_query($sQuery, $mysql_ressource) or die(mysql_error());

		if(mysql_num_rows($mysql_rs) > 0){
			$core->Nb_Participant["doughnut"] = mysql_fetch_array($mysql_rs);
			// echo $core->Nb_Participant["doughnut"]["GD_total"];
		}

	break;

	case "inscription": // Pour le traitement du formulaire dans la page "event"
		
		if($_POST['act']=='envoi') {

			$nom                 = htmlspecialchars($_POST['nom']);
			$tel	             = htmlspecialchars($_POST['tel']);
			$email               = htmlspecialchars($_POST['email']);
			$experience	         = htmlspecialchars($_POST['experience']);
			$gd                  = htmlspecialchars($_POST['gd']);
			$prog                = htmlspecialchars($_POST['prog']);
			$graph               = htmlspecialchars($_POST['graph']);
			$son                 = htmlspecialchars($_POST['son']);
			$id_place            = htmlspecialchars($_POST['id_place']);

			$mail_valide = false;
			$tel_valide = false;
			
			// On vérifie la syntaxe de l'email
			// Si la syntaxe est incorrect, on retourne sur le formulaire pour prévenir l'internaute (exit)
			if (preg_match("#^[a-z0-9._-]+@[a-z0-9._-]{2,}\.[a-z]{2,4}$#", $email)){

				$mail_valide = true;

			}else{

				$operation_terminee = array(
					"reussite" => false,
					"nom_echec" => "mail"
				);
				exit(json_encode($operation_terminee));
			}

			// On vérifie la syntaxe du téléphone
			// Si la syntaxe est incorrect, on retourne sur le formulaire pour prévenir l'internaute (exit)
			if (preg_match("#^0[1-68]([-. ]?[0-9]{2}){4}$#", $tel)){

				$tel_valide = true;
			}else{

				$operation_terminee = array(
					"reussite" => false,
					"nom_echec" => "tel"
				);
				exit(json_encode($operation_terminee));
			}

			// Si tout le formulaire est OK :
			// On insère le nouveau participant dans la BDD
			// On retourne sur le formulaire en précisant que l'opération est réussite (exit)
			if($mail_valide && $tel_valide){

				$sQuery = 'INSERT INTO js_participants(id, id_places, name, mail, phone, xp, r_gd, r_prog, r_graph, r_sound) VALUES ("", "'.$id_place.'","'.$nom.'","'.$email.'","'.$tel.'","'.$experience.'","'.$gd.'","'.$prog.'","'.$graph.'","'.$son.'")';
				$mysql_rs = mysql_query($sQuery, $mysql_ressource) or die(mysql_error());
				
				$operation_terminee = array(
					"reussite" => true
				);
				exit(json_encode($operation_terminee));
			}

		}

	break;

	default: // Page d'accueil
		$content = "home";
		$sQuery = "SELECT * FROM js_events WHERE id=1";
		$mysql_rs = mysql_query($sQuery, $mysql_ressource) or die(mysql_error());
		$core->Event = mysql_fetch_array($mysql_rs);

		// On récupère le texte d'introduction de la page d'accueil
		$sQuery = 'SELECT * FROM js_home';
		$mysql_rs = mysql_query($sQuery, $mysql_ressource) or die(mysql_error());

		if(mysql_num_rows($mysql_rs) > 0){
			$core->Intro = mysql_fetch_array($mysql_rs);
		}


		// On récupère tous les événements qui sont à venir
		// $sQuery = 'SELECT * FROM js_events WHERE date_end >= DATE_ADD(NOW(), INTERVAL 15 DAY) ORDER BY date_start DESC';
		$sQuery = 'SELECT * FROM js_events WHERE date_end >= DATE_ADD(NOW(), INTERVAL 15 DAY) ORDER BY date_start DESC';
		$mysql_rs = mysql_query($sQuery, $mysql_ressource) or die(mysql_error());
		$core->Events = array();
		
		// Si la requête s'est bien passé (s'il y a eu une réponse) :
		if(mysql_num_rows($mysql_rs) > 0){

			// Boucle pour récupérer tous les événements et les stocker dans "$core->Events"
			while($aRow = mysql_fetch_array($mysql_rs)){

				// On récupère l'id de l'événement en cours de traitement pour aller chercher toutes les places correspondants à cet événement
				$event_id = $aRow["id"];
				// echo $event_id;
				$sQuery_second = 'SELECT * FROM js_places WHERE id_event ="'.$event_id.'"';
				$mysql_rs_second = mysql_query($sQuery_second, $mysql_ressource) or die(mysql_error());

				// Si la requête s'est bien passé (s'il y a eu une réponse cad s'il y a eu des places pour l'évènement) :
				if(mysql_num_rows($mysql_rs_second) > 0){

					// Si il y a une seule place pour l'évènement demandé :
					if(mysql_num_rows($mysql_rs_second) == 1){

						$aRow["PlusieursPlaces"] = false;
						$aRow["places"] = mysql_fetch_array($mysql_rs_second);

					}else{ // Sinon il y a plusieurs places

						$aRow["PlusieursPlaces"] = true;

						$tableau_temp = array();

						// Boucle pour stocker toutes les places où ont lieux l'événement dans le tableau "tableau_temp"
						while($i = mysql_fetch_array($mysql_rs_second)){
							array_push($tableau_temp, $i);
						}

						// On place le tableau "tableau_temp" dans $aRow["places"]
						// Ainsi on connait l'étiquette du tableau $aRow qui contient les tableaux des places
						$aRow["places"] = $tableau_temp;
					}

				}

				// On stocke les valeurs de l'événement et les différentes places de l'évènement dans "$core->Events"
				array_push($core->Events, $aRow);
			}

		}


		// On récupère les jeux qui doivent être mis sur la page d'accueil
		$sQuery = 'SELECT * FROM js_games WHERE home=1';
		$mysql_rs = mysql_query($sQuery, $mysql_ressource) or die(mysql_error());

		$core->Jeux = array();

		if(mysql_num_rows($mysql_rs) > 0){

			while($aRow = mysql_fetch_array($mysql_rs)){

				$event_id = $aRow["id_event"];

				// Seconde requête pour récupérer le nom de chaque "event" correspondant au jeu
				$sQuery_second = 'SELECT id,name FROM js_events WHERE id ="'.$event_id.'"';
				$mysql_rs_second = mysql_query($sQuery_second, $mysql_ressource) or die(mysql_error());

				// Il y a une seule réponse par jeu
				if(mysql_num_rows($mysql_rs_second) > 0){
					$aRow["name_event"] = mysql_fetch_array($mysql_rs_second);
					// echo $aRow["name_event"]["name"];
				}

				array_push($core->Jeux, $aRow);
			}
		}

	break;
}



$smarty->assign('meta',$meta);
$smarty->assign('core',$core);
$smarty->assign('content',$content);

// Affichage du template
$smarty->display($tpl);



function getBaseUrl()
{
    // output: /myproject/index.php
    $currentPath = $_SERVER['PHP_SELF'];
     
    // output: Array ( [dirname] => /myproject [basename] => index.php [extension] => php [filename] => index )
    $pathInfo = pathinfo($currentPath);
     
    // output: localhost
    $hostName = $_SERVER['HTTP_HOST'];
     
    // output: http://
    $protocol = strtolower(substr($_SERVER["SERVER_PROTOCOL"],0,5))=='https://'?'https://':'http://';
     
    // return: http://localhost/myproject/
    return $protocol.$hostName.$pathInfo['dirname']."/";
}

?>