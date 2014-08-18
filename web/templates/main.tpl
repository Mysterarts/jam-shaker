<!doctype html>
<!--[if lt IE 7]> <html class="lt-ie9 lt-ie8 lt-ie7" lang="{$lang}"> <![endif]-->
<!--[if IE 7]>    <html class="lt-ie9 lt-ie8" lang="{$lang}"> <![endif]-->
<!--[if IE 8]>    <html class="lt-ie9" lang="{$lang}"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="" lang="fr"> <!--<![endif]-->
<head>
	<meta charset="utf-8">

	<meta name="description" content="{$meta.description|strip_tags|truncate:200}" />
	<meta name="keywords" content="{$meta.keywords|strip_tags}" />

	<meta name="viewport" content="width=device-width">

	<title>{$meta.title}</title>

	<base href="{$smarty.const.BASE_URL}" />

	<!--[if (lt IE 9) & (!IEMobile)]>
	<script src="include/js/html5shiv.js"></script>
	<script src="include/js/nwmatcher-1.2.5.js"></script>
	<script src="include/js/selectivizr-min.js"></script>
	<![endif]-->

	<link rel="shortcut icon" href="favicon.ico" />
	<link rel="icon" type="image/x-icon" href="favicon.ico" />


	<link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,300,400,700,900' rel='stylesheet' type='text/css'>

	<!--[if lte IE 8]>
		<link rel="stylesheet" href="css/old-ie.css">
	<![endif]-->
	<!--[if gt IE 8]><!-->
		<link rel="stylesheet" href="css/global.css">
	<!--<![endif]-->
</head>

<body class="{$content}">

	<header class="header">
		{include file="commun/header.tpl"}
	</header>

	<div class="conteneur-global">
		{include file="content/$content.tpl"}
	</div>
	
	<footer>
		{include file="commun/footer.tpl"}
	</footer>


	<script type="text/javascript" src="include/js/jquery-1.11.0.min.js"></script>
	<script type="text/javascript" src="include/js/jquery.plugins.js"></script>

	<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true"></script>
	<script type="text/javascript" src="include/js/gmaps.js"></script>

	<script type="text/javascript" src="include/js/jquery.mousewheel.js"></script>
	<script type="text/javascript" src="include/js/mwheelIntent.js"></script>

	<script type="text/javascript" src="include/js/grid.js"></script>

	<script type="text/javascript" src="include/js/form.js"></script>
	<script type="text/javascript" src="include/js/customs.js"></script>

	<script type="text/javascript">
		{literal}
		// iOS scale bug fix
			window.MBP.scaleFix();
		{/literal}
	</script>
</body>
</html>