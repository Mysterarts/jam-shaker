<?php
class Actualite extends _Table {
	var $_libelle      = "Actualités";
	var $_ajout        = "Nouvelle actualité";
	var $_modification = "Modification d'une actualité";
	var $_insertion    = "Ajout d'une actualité";

	var $_add          = true;
	var $_del          = true;
	var $_filtre       = "";
	var $_order        = "act_date DESC, act_id DESC";
	var $_tri          = false;
	var $_commentaires = false;
	var $_pagination   = 20;
	var $_traduction   = false;

	var $_champs = array(
		'date' => array(
			'type' => 'date',
			'libelle' => 'Date'
		),
		'type' => array(
			'type'    => 'combo',
			'table'   => 'ActualiteType',
			'libelle' => "Type d'actualité",
			'value'   => '%libelle%'
		),
		'titre' => array(
			'type' => 'string',
			'libelle' => 'Titre',
			'length' => 255
		),
		'contenu' => array(
			'type' => 'fck',
			'config' => 'page.js',
			'libelle' => 'Contenu'
		),
		'photo' => array(
			'type'    => 'photo',
			'libelle' => 'Photo',
			'nombre'  => 1,
			'format'  => array(
				'M'     => '550x285x1',
				'L'     => '600x415x1',
				'XL'     => '1100x355x1'
			),
			'extension' => 'jpg,jpeg,gif,png'
		),
		'video' => array(
			'type' => 'text',
			'libelle' => 'Lien video',
		),
		'lien' => array(
			'type' => 'string',
			'libelle' => 'Lien mini site',
			'length' => 255
		),
	);

	var $_presentation = array(
		'th' => array(
			'Date'        => 'width:10%;',
			'Titre'       => 'width:25%;',
			'Contenu'     => 'width:65%;'
		),
		'td' => array(
			'%date%'                                       => '',
			'%titre%'                                      => '',
			'%contenu%'                                    => ''
		)
	);

	function GetCanonical(){
		global $smarty;
		return $smarty->getConfigVars("urlActualite").$this->id."/".smarty_modifier_url($this->Display('%titre%'))."/";
	}

}
?>