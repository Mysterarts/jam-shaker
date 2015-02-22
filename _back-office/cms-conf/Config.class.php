<?php
class Config {
	// ==== ACCUEIL ADMIN
	var $home = "Actualite.php";

	// ==== SITE MAP
	var $SiteMap = false;

	// ==== CUSTOM USER : si gestion de droits
	// public static $customUser = "Abonne";
	
	// ==== PROPRIETES
	var $menu = array(
		"Actualite"  => "Actualités",
		"ActualiteType" => "Types d'actualités",
		"SliderHome"   => "Slider Home",
		"Programme"   => "Programmes"
	);

	// ===== LANGUES
	public static $langues = array(
		'fr' => 'Français'
	);

	// ==== MEDIA : définition des formats des imgages pour la bibliothèque de médias (pour les différents CK Editor)
	public static $media = array(
		'T' => '150x100x0',		// Thumb pour galerie back office
		'S' => '200x200x1',		// Petite pour le blog
		'M' => '300x1000x0',	// Moyenne pour le blog
		'L' => '604x1000x0',	// Grande pour le blog
		'XL' => '800x600x0'		// Zoom pour le blog
	);

	// ==== CONTRUCTEUR
	function __construct() {
	}
}
?>