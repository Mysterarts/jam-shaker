<?php
if(strpos($_SERVER['HTTP_HOST'],'.dev.') > 0) { // Environnement de dev
	define("CMS_DIR", "/var/www/vhosts/mcube.fr/subdomains/dev/_cms/v3");
	define("BD_SRV", "localhost");
	define("BD_DNS", "dev_renaissance");
	define("BD_USR", "dev");
	define("BD_PWD", "paD-MbMA/7AXpj+pEfc");
	define("URL", "http://renaissance-immo.dev.mcube.fr/");
	define("EMAIL_CONTACT", "olivier@mcube.fr");
} else {										// Environnement production
	define("CMS_DIR", "/var/www/vhosts/mcube2.com/subdomains/v3.cms");
	define("BD_SRV", "localhost");
	define("BD_DNS", "renaissance_cms");
	define("BD_USR", "renaissance");
	define("BD_PWD", 'xkC$r885');
	define("EMAIL_CONTACT", "contact@renaissance-immobilier.com");

	if(strpos($_SERVER['HTTP_HOST'],'.prod.') > 0) { // Environnement de test
		define("URL", "http://renaissance-immo.prod.mcube.fr/");
	} else {
		define("URL", "http://www.renaissance-immobilier.com/");
	}
}

define("EMAIL_FROM",      "contact@renaissance-immobilier.com");
define("EMAIL_FROM_NAME", "Renaissance Immobilier");

define("MAINTENANCE", false);
define("DEBUG",false);
define("SITE","RENAISSANCE");
define("SESSION","renaissance-immo");
?>
