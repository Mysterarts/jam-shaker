<?php /* Smarty version Smarty-3.1.16, created on 2014-08-02 18:39:52
         compiled from "./templates/content/event.tpl" */ ?>
<?php /*%%SmartyHeaderCode:20738870653dd1458860d41-89257047%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '8f9c8d09ac0d5fd85e9c85a3bcf6f4f5f2230f6c' => 
    array (
      0 => './templates/content/event.tpl',
      1 => 1406993694,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '20738870653dd1458860d41-89257047',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'core' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.16',
  'unifunc' => 'content_53dd145889b422_54970797',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_53dd145889b422_54970797')) {function content_53dd145889b422_54970797($_smarty_tpl) {?><?php if ($_smarty_tpl->tpl_vars['core']->value->EmptyDisplay) {?>

	<div class="contains">
		<h1 class="titre-1">Oops</h1>
		<h2 class="titre-2">Mauvaise URL !</h2>
	</div>

<?php } else { ?>	
	<div class="contains">
		<h1 class="titre-1"><?php echo $_smarty_tpl->tpl_vars['core']->value->Event['name'];?>
</h1>
		<h2 class="titre-2"><?php echo $_smarty_tpl->tpl_vars['core']->value->Place['location'];?>
</h2>
	</div>

	<div class="info">
		<p class="date"><span class="icon-calendar"></span>12 Mai - 14 Mai</p>
		<p class="horaire"><span class="icon-clock"></span><span class="p-horaire"><?php echo $_smarty_tpl->tpl_vars['core']->value->Place['timetable'];?>
</span></p>
	</div>

	<div id="map" class="map">
		<input type="hidden" id="map-lat" value="<?php echo $_smarty_tpl->tpl_vars['core']->value->Place['location_lat'];?>
">
		<input type="hidden" id="map-lng" value="<?php echo $_smarty_tpl->tpl_vars['core']->value->Place['location_lng'];?>
">
		<input type="hidden" id="map-zoom" value="<?php echo $_smarty_tpl->tpl_vars['core']->value->Place['location_zoom'];?>
">
	</div>

	<div class="contains description">
		<p><?php echo $_smarty_tpl->tpl_vars['core']->value->Place['descr'];?>
</p>
	</div>
<?php }?><?php }} ?>
