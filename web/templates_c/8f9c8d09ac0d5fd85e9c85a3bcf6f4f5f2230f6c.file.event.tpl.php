<?php /* Smarty version Smarty-3.1.16, created on 2014-08-06 17:57:51
         compiled from "./templates/content/event.tpl" */ ?>
<?php /*%%SmartyHeaderCode:99805715353dbae7557df91-48043469%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '8f9c8d09ac0d5fd85e9c85a3bcf6f4f5f2230f6c' => 
    array (
      0 => './templates/content/event.tpl',
      1 => 1407340669,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '99805715353dbae7557df91-48043469',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.16',
  'unifunc' => 'content_53dbae75592429_84210808',
  'variables' => 
  array (
    'core' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_53dbae75592429_84210808')) {function content_53dbae75592429_84210808($_smarty_tpl) {?><?php if ($_smarty_tpl->tpl_vars['core']->value->EmptyDisplay) {?>

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

	<div class="contains graphics">
		<div class="schema-doughnut">
			<canvas id="doughnut" class="doughnut" width="300" height="300" />
			<input type="hidden" id="gd-nb" value="<?php echo $_smarty_tpl->tpl_vars['core']->value->Nb_Participant['gd']['GD_total'];?>
">
			<input type="hidden" id="prog-nb" value="<?php echo $_smarty_tpl->tpl_vars['core']->value->Nb_Participant['prog']['PROG_total'];?>
">
			<input type="hidden" id="graph-nb" value="<?php echo $_smarty_tpl->tpl_vars['core']->value->Nb_Participant['graph']['GRAPH_total'];?>
">
			<input type="hidden" id="son-nb" value="<?php echo $_smarty_tpl->tpl_vars['core']->value->Nb_Participant['son']['SON_total'];?>
">
		</div>

		<div class="schema-bar">
			<canvas id="bar" class="bar" width="300" height="300"/>
		</div>

	</div>

	<div class="bloc-formulaire">
		<div class="contains">
			<h3 class="titre-3">Inscription</h3>
			<form action="#" name="inscription-event" class="inscription-event" id="inscription-event">

				<div class="form-bloc-g">
					<input type="text" class="input-inscription" id="nom" placeholder="Nom et prénom" name="nom" value="">
					<input type="text" class="input-inscription" id="email" placeholder="Mail" name="email" value="">
					<input type="text" class="input-inscription" id="tel" placeholder="Téléphone" name="tel" value="">
					<input type="text" class="input-inscription" id="experience" placeholder="Expérience (pro + nombre de jams)" name="experience" value="">
				</div>
				<div class="form-bloc-d">
					<div class="hi-icon-wrap hi-icon-effect-1 hi-icon-effect-1a">
						<div class="contain-icon"><a class="hi-icon" id="gd" >GD</a></div>
						<div class="contain-icon"><a class="hi-icon" id="prog" >Prog</a></div>
						<div class="contain-icon"><a class="hi-icon" id="graph" >Graph</a></div>
						<div class="contain-icon"><a class="hi-icon" id="son" >Son</a></div>
					</div>
					<input type="hidden" id="place" value="<?php echo $_smarty_tpl->tpl_vars['core']->value->Place['id'];?>
">
					<input type="submit" id="envoi" class="btn-envoi" value="Envoyer">
				</div>

			</form>
		</div>
	</div>

<?php }?><?php }} ?>
