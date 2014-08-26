<?php /* Smarty version Smarty-3.1.16, created on 2014-08-26 23:31:07
         compiled from "./templates/content/home.tpl" */ ?>
<?php /*%%SmartyHeaderCode:7975551185324a1e0c18c21-03506482%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'ee035fe543dcccb5cfded76c64137b81cc052db1' => 
    array (
      0 => './templates/content/home.tpl',
      1 => 1409088666,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '7975551185324a1e0c18c21-03506482',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.16',
  'unifunc' => 'content_5324a1e0c1b6d2_38328677',
  'variables' => 
  array (
    'core' => 0,
    'jeu' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5324a1e0c1b6d2_38328677')) {function content_5324a1e0c1b6d2_38328677($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_truncate')) include '/Applications/MAMP/htdocs/jam-shaker/_CMS/_libs/plugins/modifier.truncate.php';
?><div class="contains padding-supp">
	<p class="text-acc"><?php echo $_smarty_tpl->tpl_vars['core']->value->Intro['text'];?>
</p>

	<h1 class="titre-1">Les évènements à venir</h1>

	<?php echo $_smarty_tpl->getSubTemplate ("commun/events.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>


	<h1 class="titre-1">Les jeux de la semaine</h1>

	<ul class="list-jeux">
		<?php  $_smarty_tpl->tpl_vars["jeu"] = new Smarty_Variable; $_smarty_tpl->tpl_vars["jeu"]->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['core']->value->Jeux; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars["jeu"]->key => $_smarty_tpl->tpl_vars["jeu"]->value) {
$_smarty_tpl->tpl_vars["jeu"]->_loop = true;
?>
			<li class="jeu">
				<div class="jeu-img">
					<img src="img/<?php echo $_smarty_tpl->tpl_vars['jeu']->value['img_max'];?>
" alt="" />
				</div>
				<div class="jeu-text">
					<h2 class="titre-jeu"><?php echo $_smarty_tpl->tpl_vars['jeu']->value['name'];?>
</h2>
					<img class="badge" src="img/badges/badge-<?php echo $_smarty_tpl->tpl_vars['jeu']->value['name_event']['id'];?>
.png" />
					<p class="event"><?php echo $_smarty_tpl->tpl_vars['jeu']->value['name_event']['name'];?>
</p>
					<p class="desc"><?php echo smarty_modifier_truncate($_smarty_tpl->tpl_vars['jeu']->value['descr'],400);?>
</p>
					<a href="<?php echo $_smarty_tpl->tpl_vars['jeu']->value['url'];?>
" class="lien-jeu">Jouer</a>
				</div>
			</li>
		<?php } ?>
	</ul>

</div><?php }} ?>
