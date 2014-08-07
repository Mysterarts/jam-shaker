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

	case "events":
		$meta["title"] = "Jam Shaker - Évènements - Events";
		$meta["description"] = "Jam Shaker - Évènements - Events";
		$meta["keywords"] = "Jam Shaker - Évènements - Events";
		$content = "events";

		$archive = null;
		if(!empty($_GET['archive'])){

			$sQuery = 'SELECT * FROM js_events WHERE date_end < DATE_ADD(NOW(), INTERVAL 15 DAY) ORDER BY date_start DESC';
			$core->sousMenu = "archives";

		}else{
			$sQuery = 'SELECT * FROM js_events WHERE date_end >= DATE_ADD(NOW(), INTERVAL 15 DAY) ORDER BY date_start DESC';
			$core->sousMenu = "a_venir";
		}
		
		$mysql_rs = mysql_query($sQuery, $mysql_ressource) or die(mysql_error());
		$core->Events = array();
		
		if(mysql_num_rows($mysql_rs) > 0){

			while($aRow = mysql_fetch_array($mysql_rs)){

				$event_id = $aRow["id"];
				// echo $event_id;
				$sQuery_second = 'SELECT * FROM js_places WHERE id_event ="'.$event_id.'"';
				$mysql_rs_second = mysql_query($sQuery_second, $mysql_ressource) or die(mysql_error());

				if(mysql_num_rows($mysql_rs_second) > 0){

					$tableau_temp = new array();
					while($i = mysql_fetch_array($mysql_rs_second)){
						array_push($tableau_temp, $i);
					}

					array_push($aRow, $tableau_temp);
				}

				array_push($core->Events, $aRow);
			}

		}
		

	break;

	case "event":
		$meta["title"] = "Jam Shaker - Évènement - Event";
		$meta["description"] = "Jam Shaker - Évènement - Event ?";
		$meta["keywords"] = "Jam Shaker - Évènement - Event";
		$content = "event";

		$event = null;
		if(!empty($_GET['event'])){
			$event = $_GET['event'];
		}

		$sQuery = 'SELECT * FROM js_events WHERE url="'.$event.'"';
		$mysql_rs = mysql_query($sQuery, $mysql_ressource) or die(mysql_error());
		
		$core->EmptyDisplay = false;
		if(mysql_num_rows($mysql_rs) > 0){
			$core->Event = mysql_fetch_array($mysql_rs);
		}else{
			//Si aucune place, afficher une erreur (voir le template event)
			$core->EmptyDisplay = true;
		}

		$place = null;
		if(!empty($_GET['place'])){
			$place = $_GET['place'];
		}

		$event_id = $core->Event["id"];

		$sQuery = 'SELECT * FROM js_places WHERE id_event="'.$event_id.'" AND url="'.$place.'"';
		$mysql_rs = mysql_query($sQuery, $mysql_ressource) or die(mysql_error());

		if(mysql_num_rows($mysql_rs) > 0){

			$core->Place = mysql_fetch_array($mysql_rs);

		}else{
			
			//Si pas de place précisée, aller chercher la première place de cet event
			$sQuery = 'SELECT * FROM js_places WHERE id_event="'.$event_id.'" LIMIT 0,1';
			$mysql_rs = mysql_query($sQuery, $mysql_ressource) or die(mysql_error());

			if(mysql_num_rows($mysql_rs) > 0){
				$core->Place = mysql_fetch_array($mysql_rs);
			}else{
				//Si aucune place pour cet event, afficher une erreur (voir le template event)
				$core->EmptyDisplay = true;
			}
		}

		$core->Nb_Participant = array();
			
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
			

			if (preg_match("#^[a-z0-9._-]+@[a-z0-9._-]{2,}\.[a-z]{2,4}$#", $email)){

				$mail_valide = true;

			}else{

				$operation_terminee = array(
					"reussite" => false,
					"nom_echec" => "mail"
				);
				exit(json_encode($operation_terminee));
			}

			if (preg_match("#^0[1-68]([-. ]?[0-9]{2}){4}$#", $tel)){

				$tel_valide = true;
			}else{

				$operation_terminee = array(
					"reussite" => false,
					"nom_echec" => "tel"
				);
				exit(json_encode($operation_terminee));
			}

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