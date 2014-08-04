<?php /* Smarty version Smarty-3.1.16, created on 2014-08-02 23:17:49
         compiled from "./templates/main.tpl" */ ?>
<?php /*%%SmartyHeaderCode:74493307053242821c08872-06292422%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '48ad11f68be179e1830edf3ce56b82b0712baeff' => 
    array (
      0 => './templates/main.tpl',
      1 => 1407012215,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '74493307053242821c08872-06292422',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.16',
  'unifunc' => 'content_53242821c54e47_42364342',
  'variables' => 
  array (
    'lang' => 0,
    'meta' => 0,
    'content' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_53242821c54e47_42364342')) {function content_53242821c54e47_42364342($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_truncate')) include '/Applications/MAMP/htdocs/jam-shaker/_CMS/_libs/plugins/modifier.truncate.php';
?><!doctype html>
<!--[if lt IE 7]> <html class="lt-ie9 lt-ie8 lt-ie7" lang="<?php echo $_smarty_tpl->tpl_vars['lang']->value;?>
"> <![endif]-->
<!--[if IE 7]>    <html class="lt-ie9 lt-ie8" lang="<?php echo $_smarty_tpl->tpl_vars['lang']->value;?>
"> <![endif]-->
<!--[if IE 8]>    <html class="lt-ie9" lang="<?php echo $_smarty_tpl->tpl_vars['lang']->value;?>
"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="" lang="fr"> <!--<![endif]-->
<head>
	<meta charset="utf-8">

	<meta name="description" content="<?php echo smarty_modifier_truncate(preg_replace('!<[^>]*?>!', ' ', $_smarty_tpl->tpl_vars['meta']->value['description']),200);?>
" />
	<meta name="keywords" content="<?php echo preg_replace('!<[^>]*?>!', ' ', $_smarty_tpl->tpl_vars['meta']->value['keywords']);?>
" />

	<meta name="viewport" content="width=device-width">

	<title><?php echo $_smarty_tpl->tpl_vars['meta']->value['title'];?>
</title>

	<base href="<?php echo @constant('BASE_URL');?>
" />

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

<body class="<?php echo $_smarty_tpl->tpl_vars['content']->value;?>
">

	<header class="header">
		<?php echo $_smarty_tpl->getSubTemplate ("commun/header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

	</header>

	<div class="conteneur-global">
		<?php echo $_smarty_tpl->getSubTemplate ("content/".((string)$_smarty_tpl->tpl_vars['content']->value).".tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

	</div>
	
	<footer>
		<?php echo $_smarty_tpl->getSubTemplate ("commun/footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

	</footer>


	<script type="text/javascript" src="include/js/jquery-1.11.0.min.js"></script>
	<script type="text/javascript" src="include/js/jquery.plugins.js"></script>
	<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true"></script>
	<script type="text/javascript" src="include/js/gmaps.js"></script>
	<script type="text/javascript" src="include/js/jquery.mousewheel.js"></script>
	<script type="text/javascript" src="include/js/mwheelIntent.js"></script>

	<script type="text/javascript" src="include/js/customs.js"></script>

	<script type="text/javascript">
		
		// iOS scale bug fix
			window.MBP.scaleFix();
		
	</script>
</body>
</html><?php }} ?>
