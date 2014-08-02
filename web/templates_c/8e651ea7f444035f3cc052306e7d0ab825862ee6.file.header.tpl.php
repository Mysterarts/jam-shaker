<?php /* Smarty version Smarty-3.1.16, created on 2014-08-02 18:39:29
         compiled from "./templates/commun/header.tpl" */ ?>
<?php /*%%SmartyHeaderCode:211607289453dd1441253dd0-75961419%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '8e651ea7f444035f3cc052306e7d0ab825862ee6' => 
    array (
      0 => './templates/commun/header.tpl',
      1 => 1406908174,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '211607289453dd1441253dd0-75961419',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'content' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.16',
  'unifunc' => 'content_53dd1441277851_19311934',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_53dd1441277851_19311934')) {function content_53dd1441277851_19311934($_smarty_tpl) {?><div class="contains">

	<a href="." class="logo-jamshaker">Jam Shaker</a>

	<div class="contain-nav">
		<nav class="nav-main" id="nav-main">
			<ul>
				<li><a href="home" <?php if ($_smarty_tpl->tpl_vars['content']->value=='home') {?>class="selected"<?php }?>>Accueil</a></li>
				<li><a href="jeux" <?php if ($_smarty_tpl->tpl_vars['content']->value=='jeux') {?>class="selected"<?php }?> >Jeux</a></li>
				<li><a href="event" <?php if ($_smarty_tpl->tpl_vars['content']->value=='event'||$_smarty_tpl->tpl_vars['content']->value=='events') {?>class="selected"<?php }?> >Évènements</a></li>
			</ul>
		</nav>
	</div>

</div><?php }} ?>
