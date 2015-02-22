<?php
 /**
 * Example Application

 * @package Example-application
 */

require '../_CMS/_libs/Smarty.class.php';

setlocale(LC_TIME,"fr_FR.UTF-8","French_France.1252");

$smarty = new Smarty;

require('include/php/connexion.php');
// require('include/php/connexion.php');

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

	default: // Page d'accueil
		$content = "admin";
		
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