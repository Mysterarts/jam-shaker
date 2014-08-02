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

switch($content) {

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
			//Si aucun event, afficher un contenu spécial dans le template
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
			//Provisoir
			$core->EmptyDisplay = true;
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