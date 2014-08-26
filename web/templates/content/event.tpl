{if $core->EmptyDisplay}

	<div class="contains">
		<h1 class="titre-1">Oops</h1>
		<h2 class="titre-2">Mauvaise URL !</h2>
	</div>

{else}	

	<div class="contain-info-event">

		<div class="conteneur-flottant">
			<div class="conteneur-titre">
				<img class="badge" src="img/badges/badge-{$core->Event.id}.png" />
				<h1 class="titre-1 padding-suppl">{$core->Event.name}</h1>
				<h2 class="titre-2">{$core->Place.location}</h2>
			</div>
		</div>

		<div class="info">
			<p class="date"><span class="icon-calendar"></span>{$core->Event.date_start|date_format:"%e %B"} - {$core->Event.date_end|date_format:"%e %B"}</p>
			<p class="horaire"><span class="icon-clock"></span><span class="p-horaire">{$core->Place.timetable}</span></p>
		</div>

	</div>

	<div id="map" class="map">
		<input type="hidden" id="map-lat" value="{$core->Place.location_lat}">
		<input type="hidden" id="map-lng" value="{$core->Place.location_lng}">
		<input type="hidden" id="map-zoom" value="{$core->Place.location_zoom}">
	</div>

	<div class="contains description">
		<p>{$core->Place.descr}</p>
	</div>

	<div class="contains graphics">
		<div class="schema-doughnut">
			<canvas id="doughnut" class="doughnut" width="300" height="300" />
			<input type="hidden" id="gd-nb" value="{$core->Nb_Participant['doughnut']['GD_total']}">
			<input type="hidden" id="prog-nb" value="{$core->Nb_Participant['doughnut']['PROG_total']}">
			<input type="hidden" id="graph-nb" value="{$core->Nb_Participant['doughnut']['GRAPH_total']}">
			<input type="hidden" id="son-nb" value="{$core->Nb_Participant['doughnut']['SON_total']}">
		</div>
		
		<div class="schema-bar">
			<canvas id="bar" class="bar" width="300" height="300"/>
		</div>

		<div class="part_total"><p>Nombre total de participant : <span>{$core->Nb_Participant['doughnut']['NB_total']}</span></p></div>

	</div>



	<div class="bloc-formulaire">
		<div class="contains">
			<h3 class="titre-3">Inscription</h3>
			<form action="#" name="inscription-event" class="inscription-event" id="inscription-event">

				<div class="form-bloc-g">
					<input type="text" class="input-inscription" id="nom" placeholder="Nom + prénom" name="nom" value="">
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
					<input type="hidden" id="place" value="{$core->Place.id}">
					<input type="submit" id="envoi" class="btn-envoi" value="Envoyer">
				</div>

			</form>
		</div>
	</div>

{/if}