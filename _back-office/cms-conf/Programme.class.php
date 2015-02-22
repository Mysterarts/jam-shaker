<?php
class Programme extends _Table {
	// var $_libelle      = "Programmes";
	// var $_ajout        = "Nouveau programme";
	// var $_modification = "Modification d'un programme";
	// var $_insertion    = "Ajout d'un programme";

	// var $_add          = true;
	// var $_del          = true;
	// var $_filtre       = "";
	// var $_order        = "pro_nom DESC, pro_id DESC";
	// var $_tri          = false;
	// var $_commentaires = false;
	// var $_pagination   = 20;
	// var $_traduction   = false;

	var $_champs = array(
		'titre' => array(
			'/' => 'Texte de séparation'
		),
		'header' => array(
			'type' => 'string',
			'libelle' => 'texte',
			'length' => 255
		),
		'nom' => array(
			'type' => 'textarea',
			'libelle' => 'Nom du programme'
		),
		'carte' => array(
			'type' => 'gmap',
			'libelle' => 'Localisation',
			'config' => "input[name='~adresse'],input[name='~ville']",
			'latitude' => 44.333,	// Valeurs par défaut
			'longitude' => 4,
			'zoom' => 5
		),
		'lien' => array(
			'type' => 'select',
			'table'   => 'ActualiteType',
			'libelle' => "Type d'actualité",
			'value'   => '%libelle%'
		),
		'btnRadio' => array(
			'type' => 'radio',
			'table'   => 'ActualiteType',
			'libelle' => "Type d'actualité",
			'value'   => '%libelle%'
		),
		'checkbox' => array(
			'type' => 'checkbox',
			'table'   => 'ActualiteType',
			'libelle' => "Type d'actualité",
			'value'   => '%libelle%'
		),
		'date' => array(
			'type' => 'date',
			'libelle' => "Type d'actualité"
		),
		'ckeditor' => array(
			'type' => 'ckeditor',
			'libelle' => "Type d'actualité"
			'config' => 'page.js',
			// 'photo'   => 'S,M,L',
		),
		'logoProgramme' => array(
			'type'    => 'photo',
			'libelle' => 'Logo programme',
			'nombre'  => 1,
			'format'  => array(
				'S'     => '260x130x1'
			),
			'extension' => 'jpg,jpeg,gif,png'
		),
		'plaquette' => array(
			'type'    => 'file',
			'libelle' => 'Plaquette',
			'nombre'  => 1,
			'extension' => 'pdf'
		)
		
	);

	var $_presentation = array(
		'th' => array(
			'Nom du programme'        => 'width:90%;',
		),
		'td' => array(
			'%nom%'                                       => '',
		)
	);

	function GetCanonical($rubrique = '', $type = ''){
		global $smarty;

		switch($type) {
			case 'reference':
				$type = "urlReferences";
				break;
			default:
				$type = "urlProgrammes";
				break;
		}

		$url = $smarty->getConfigVars($type).$this->id."/".smarty_modifier_url($this->Display('%nom%'))."/";
		
		switch($rubrique) {
			case 'prestations':
				$url .= "prestations/";
				break;
			case 'situation':
				$url .= "situation/";
				break;
			default:
				break;
		}
		return $url;
	}

}
?>