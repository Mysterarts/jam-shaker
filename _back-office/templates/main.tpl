<!doctype html>
<html class="no-js" lang="fr">
<head>
	<meta charset="utf-8">

	<meta name="description" content="{$meta.description|strip_tags|truncate:250}" />
	<meta name="keywords"    content="{$meta.keywords|strip_tags}" />
	
	{* Supprimer sur un site non responsive *}
	<meta name="viewport" content="width=device-width,user-scalable=no,initial-scale=1.0,maximum-scale=1.0">

	<title>{$meta.title}</title>

	<!--[if (lt IE 9) & (!IEMobile)]>
	<script src="include/js/ie-specific/nwmatcher-1.3.3.js"></script>
	<script src="include/js/ie-specific/selectivizr-min.js"></script>
	<![endif]-->

	<link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300,300italic,700|Open+Sans:400,300,600,700,800,300italic,400italic,600italic,700italic,800italic&subset=latin,latin-ext' rel='stylesheet' type='text/css'>

	<!--[if (gt IE 8) | (IEMobile)]><!-->
	<link rel="stylesheet" href="css/screen.css">
	<!--<![endif]-->
	<!--[if (lt IE 9) & (!IEMobile)]>
	<link rel="stylesheet" href="css/screen-ie.css">
	<![endif]-->

	{include file="commun/analytics.tpl"}

	<script type="text/javascript" src="include/js/modernizr.js"></script>
</head>

<body class="{$content}">
	{include file="commun/header.tpl"}
	{include file="content/$content.tpl"}
	{include file="commun/footer.tpl"}

</body>

<script type="text/javascript" src="include/js/jquery.min.js"></script>
<script type="text/javascript" src="include/js/mcube.plugins.js"></script>
<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true"></script>
<script type="text/javascript" src="include/js/gmaps.js"></script>
<script type="text/javascript" src="include/js/moment.js"></script>
<script type="text/javascript" src="include/js/pikaday.js"></script>
<script type="text/javascript" src="_library/js/ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="_library/js/ckeditor/adapters/jquery.js"></script>
<script type="text/javascript" src="include/js/mcube.js"></script>
</html>