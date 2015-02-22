<?php

class ActualiteType extends _Table {
	var $_libelle      = "Types";
	var $_ajout        = "Ajouter un type";
	var $_modification = "Modification d'un type";
	var $_insertion    = "Ajout d'un type";
	
	var $_add          = true;
	var $_del          = true;
	var $_filtre       = "";
	var $_order        = "act_libelle";
	var $_tri          = false;
	var $_commentaires = false;
	var $_pagination   = false;
	var $_traduction   = false;

	var $_champs = array(
		'libelle' => array(
			'type' => 'string',
			'libelle' => 'Libellé',
			'length' => 255
		)
	);
	
	var $_presentation = array(
		'th' => array(	
			'Libellé' => 'width:90%;',
		),

		'td' => array(
			'%libelle%' => '', 
		)
	);
	
} 


?>