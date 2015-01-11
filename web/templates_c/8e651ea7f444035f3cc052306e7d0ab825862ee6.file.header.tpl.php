<?php /* Smarty version Smarty-3.1.16, created on 2015-01-11 23:16:54
         compiled from "./templates/commun/header.tpl" */ ?>
<?php /*%%SmartyHeaderCode:137307873054b2f65638d691-54040988%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '8e651ea7f444035f3cc052306e7d0ab825862ee6' => 
    array (
      0 => './templates/commun/header.tpl',
      1 => 1418427420,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '137307873054b2f65638d691-54040988',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'content' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.16',
  'unifunc' => 'content_54b2f656426972_85889531',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54b2f656426972_85889531')) {function content_54b2f656426972_85889531($_smarty_tpl) {?><div class="contains">

	<a href="." class="logo-jamshaker">Jam Shaker</a>

	<div class="contain-nav">
		<nav class="nav-main" id="nav-main">
			<ul>
				<li><a href="home/" <?php if ($_smarty_tpl->tpl_vars['content']->value=='home') {?>class="selected"<?php }?>>Accueil</a></li>
				<li><a href="events/" <?php if ($_smarty_tpl->tpl_vars['content']->value=='event'||$_smarty_tpl->tpl_vars['content']->value=='events') {?>class="selected"<?php }?> >Évènements</a></li>
				<li><a href="jeux/" <?php if ($_smarty_tpl->tpl_vars['content']->value=='jeux'||$_smarty_tpl->tpl_vars['content']->value=='desertBus') {?>class="selected"<?php }?> >Jeux</a></li>
			</ul>
		</nav>
	</div>

</div><?php }} ?>
