<?php
class SliderHome extends _Table {
	var $_libelle      = "Slider Home";
	var $_ajout        = "Nouveau slide";
	var $_modification = "Modification d'un slide";
	var $_insertion    = "Ajout d'un slide";

	var $_add          = true;
	var $_del          = true;
	var $_filtre       = "";
	var $_order        = "sli_id DESC";
	var $_tri          = false;
	var $_commentaires = false;
	var $_pagination   = 20;
	var $_traduction   = false;

	var $_champs = array(
		'titre' => array(
			'type' => 'string',
			'libelle' => 'Titre',
			'length' => 255
		),
		'sousTitre' => array(
			'type' => 'string',
			'libelle' => 'Sous-titre',
			'length' => 255
		),
		'contenu' => array(
			'type' => 'text',
			'libelle' => 'Contenu'
		),
		'txtBouton' => array(
			'type' => 'string',
			'libelle' => 'Texte bouton',
			'length' => 255
		),
		'lien' => array(
			'type' => 'string',
			'libelle' => 'Lien',
			'length' => 255
		),
		'photo' => array(
			'type'    => 'photo',
			'libelle' => 'Photo',
			'nombre'  => 1,
			'format'  => array(
				'L'     => '1100x320x1' // '1100x300x1'
			),
			'extension' => 'jpg,jpeg,gif,png'
		)
	);

	var $_presentation = array(
		'th' => array(
			'Titre'       => 'width:35%;',
			'Contenu'     => 'width:65%;'
		),
		'td' => array(
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