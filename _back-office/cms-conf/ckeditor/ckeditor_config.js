/*
Copyright (c) 2003-2010, CKSource - Frederico Knabben. All rights reserved.
For licensing, see LICENSE.html or http://ckeditor.com/license
*/

// CKEDITOR.stylesSet.add( 'default',
// [
// 	{ name : 'Violet'	, element : 'span', attributes : { 'class' : 'violet' } },
// 	{ name : 'Cadre bleu', element : 'div', attributes : { 'class' : 'cadre-bleu' } },
// 	{ name : 'Cadre orange', element : 'div', attributes : { 'class' : 'cadre-orange' } },
// 	{ name : 'Cadre bleu pointillé', element : 'div', attributes : { 'class' : 'cadre-bleu-pointille' } },
// 	{ name : 'Cadre orange pointillé', element : 'div', attributes : { 'class' : 'cadre-orange-pointille' } },
// 	{ name : 'Couleur orange', element : 'span', attributes : { 'class' : 'orange' } },
// 	{ name : 'Couleur bleu', element : 'span', attributes : { 'class' : 'bleu' } },
// 	{ name : 'Couleur marron', element : 'span', attributes : { 'class' : 'marron' } }


// ]);

CKEDITOR.editorConfig = function( config )
{
	config.toolbar_default = // OU config.toolbar = (et dans ce cas pas besoin de mettre 'config.toolbar = 'default';")
	[
		['Source','Maximize'],
		['RemoveFormat'],
		['Format'],
		// ['Styles'],
		['Bold','Italic','Underline','Strike','-','Subscript','Superscript'],
		['NumberedList','BulletedList','-','Outdent','Indent'],
		['JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock'],
		['Link','Unlink'],
		['SpecialChar','Table'],
		['Image']
	];
	config.format_tags = "p;h2;h3";
	config.contentsCss = 'cms-conf/ckeditor/ckeditor_config.css'; // CKEDITOR.basePath
	config.menu_groups = '';
	config.forcePasteAsPlainText = true;
	config.width = 585;	// = largeur div + 55
	config.height = 400;
	config.defaultLanguage = 'fr';
	//config.enterMode = CKEDITOR.ENTER_BR;
	// config.filebrowserBrowseUrl = CKEDITOR.basePath+'filemanager/index.html';
	// config.bodyClass = 'page';	
	config.stylesSet = 'default';
	config.toolbar = 'default';
	
};