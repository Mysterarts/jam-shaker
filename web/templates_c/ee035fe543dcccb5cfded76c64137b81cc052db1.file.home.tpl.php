<?php /* Smarty version Smarty-3.1.16, created on 2015-01-11 23:16:54
         compiled from "./templates/content/home.tpl" */ ?>
<?php /*%%SmartyHeaderCode:88577341754b2f65642ad78-42550831%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'ee035fe543dcccb5cfded76c64137b81cc052db1' => 
    array (
      0 => './templates/content/home.tpl',
      1 => 1417129140,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '88577341754b2f65642ad78-42550831',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'core' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.16',
  'unifunc' => 'content_54b2f6564587a9_06239585',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54b2f6564587a9_06239585')) {function content_54b2f6564587a9_06239585($_smarty_tpl) {?><div class="contains padding-supp">
	<p class="text-acc"><?php echo $_smarty_tpl->tpl_vars['core']->value->Intro['text'];?>
</p>

	<!-- <h1 class="titre-1">Les évènements à venir</h1> -->

	<?php echo $_smarty_tpl->getSubTemplate ("commun/events.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>


	<h1 class="titre-1">Jeux de jams</h1>

	
	<img src="img/small/A_10.gif" />
    <img src="img/small/A_12.gif" />
    <img src="img/small/A_13.gif" />
    <img src="img/small/A_11.gif" />
	<img src="img/small/A_9.gif" />
    <img src="img/small/A_2.gif" />
    <img src="img/small/A_6.gif" />
    <img src="img/small/A_5.gif" />
    <img src="img/small/A_4.gif" />
    

</div>

<!--
<div id="grille-jeux">
	<ul class="grille-jeux">
		<?php  $_smarty_tpl->tpl_vars["jeu"] = new Smarty_Variable; $_smarty_tpl->tpl_vars["jeu"]->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['core']->value->Jeux; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars["jeu"]->key => $_smarty_tpl->tpl_vars["jeu"]->value) {
$_smarty_tpl->tpl_vars["jeu"]->_loop = true;
?>
			<?php echo $_smarty_tpl->getSubTemplate ("commun/grille_jeux.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

	    <?php } ?>
	</ul>
</div>
--><?php }} ?>
