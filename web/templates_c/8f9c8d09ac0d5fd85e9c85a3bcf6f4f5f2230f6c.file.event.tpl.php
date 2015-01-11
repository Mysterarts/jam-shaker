<?php /* Smarty version Smarty-3.1.16, created on 2015-01-11 23:25:01
         compiled from "./templates/content/event.tpl" */ ?>
<?php /*%%SmartyHeaderCode:129105599254b2f83d045436-85066754%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '8f9c8d09ac0d5fd85e9c85a3bcf6f4f5f2230f6c' => 
    array (
      0 => './templates/content/event.tpl',
      1 => 1417048740,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '129105599254b2f83d045436-85066754',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'core' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.16',
  'unifunc' => 'content_54b2f83d1a2ca5_41182224',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54b2f83d1a2ca5_41182224')) {function content_54b2f83d1a2ca5_41182224($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_date_format')) include '/Applications/MAMP/htdocs/jam-shaker/_CMS/_libs/plugins/modifier.date_format.php';
?><?php if ($_smarty_tpl->tpl_vars['core']->value->EmptyDisplay) {?>

	<div class="contains">
		<h1 class="titre-1">Oops</h1>
		<h2 class="titre-2">Mauvaise URL !</h2>
	</div>

<?php } else { ?>	

	<div class="contain-info-event">

		<div class="conteneur-flottant">
			<div class="conteneur-titre">
				<img class="badge" src="img/badges/badge-<?php echo $_smarty_tpl->tpl_vars['core']->value->Event['id'];?>
.png" />
				<h1 class="titre-1 padding-suppl"><?php echo $_smarty_tpl->tpl_vars['core']->value->Event['name'];?>
</h1>
				<h2 class="titre-2"><?php echo $_smarty_tpl->tpl_vars['core']->value->Place['location'];?>
</h2>
			</div>
		</div>

		<div class="info">
			<p class="date"><span class="icon-calendar"></span><?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['core']->value->Event['date_start'],"%e %B");?>
 - <?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['core']->value->Event['date_end'],"%e %B");?>
</p>
			<p class="horaire"><span class="icon-clock"></span><span class="p-horaire"><?php echo $_smarty_tpl->tpl_vars['core']->value->Place['timetable'];?>
</span></p>
		</div>

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
		<?php if ($_smarty_tpl->tpl_vars['core']->value->Nb_Participant['doughnut']['NB_total']>0) {?>
			<div class="schema-doughnut">
				<canvas id="doughnut" class="doughnut" width="300" height="300" />
				<input type="hidden" id="gd-nb" value="<?php echo $_smarty_tpl->tpl_vars['core']->value->Nb_Participant['doughnut']['GD_total'];?>
">
				<input type="hidden" id="prog-nb" value="<?php echo $_smarty_tpl->tpl_vars['core']->value->Nb_Participant['doughnut']['PROG_total'];?>
">
				<input type="hidden" id="graph-nb" value="<?php echo $_smarty_tpl->tpl_vars['core']->value->Nb_Participant['doughnut']['GRAPH_total'];?>
">
				<input type="hidden" id="son-nb" value="<?php echo $_smarty_tpl->tpl_vars['core']->value->Nb_Participant['doughnut']['SON_total'];?>
">
			</div>
			
			<div class="schema-bar">
				<canvas id="bar" class="bar" width="300" height="300"/>
				<input type="hidden" id="bar-data" value='<?php echo $_smarty_tpl->tpl_vars['core']->value->Nb_Participant['bar'];?>
'>
			</div>

			<div class="part_total"><p>Nombre total de participant : <span><?php echo $_smarty_tpl->tpl_vars['core']->value->Nb_Participant['doughnut']['NB_total'];?>
</span></p></div>
		<?php } else { ?>
			<div class="part_total"><p>Pas de statistique sur les participants</span></p></div>
		<?php }?>

	</div>


	<div class="bloc-formulaire">
		<div class="contains">
			<?php if (time()<$_smarty_tpl->tpl_vars['core']->value->Event['date_end_timestamp']) {?>
				<h3 class="titre-3">Inscription</h3>
				<form action="#" name="inscription-event" class="inscription-event" id="inscription-event">

					<div class="form-bloc-g">
						<input type="text" class="input-inscription" id="nom" placeholder="Prénom Nom" name="nom" value="">
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
			<?php } else { ?>
				<h3 class="titre-3">Inscription close</h3>
			<?php }?>
		</div>
	</div>

<?php }?><?php }} ?>
