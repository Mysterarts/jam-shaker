{if $core->EmptyDisplay}

	<div class="contains">
		<h1 class="titre-1">Oops</h1>
		<h2 class="titre-2">Mauvaise URL !</h2>
	</div>

{else}	
	<div class="contains">
		<h1 class="titre-1">{$core->Event.name}</h1>
		<h2 class="titre-2">{$core->Place.location}</h2>
	</div>

	<div class="info">
		<p class="date"><span class="icon-calendar"></span>12 Mai - 14 Mai</p>
		<p class="horaire"><span class="icon-clock"></span><span class="p-horaire">{$core->Place.timetable}</span></p>
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
			<input type="hidden" id="gd-nb" value="10">
			<input type="hidden" id="prog-nb" value="20">
			<input type="hidden" id="graph-nb" value="30">
			<input type="hidden" id="son-nb" value="10">
		</div>

		<div class="schema-bar">
			<canvas id="bar" class="bar" width="400" height="300"/>
		</div>

	</div>

	<div class="bloc-formulaire">
		<div class="contains">
			<h3 class="titre-3">Inscription</h3>
			<form action="#" name="inscription-event" class="inscription-event" id="inscription-event">

				<div class="form-bloc-g">
					<input type="text" class="input-inscription validate[required]" id="nom" placeholder="Nom" name="nom">
					<input type="text" class="input-inscription validate[required]" id="prenom" placeholder="Prénom" name="prenom">
					<input type="text" class="input-inscription validate[required]" id="email" placeholder="Mail" name="email">
					<input type="text" class="input-inscription validate[required]" id="tel" placeholder="Téléphone" name="tel">
				</div>
				<div class="form-bloc-d">
					<div class="hi-icon-wrap hi-icon-effect-1 hi-icon-effect-1a">
						<div class="contain-icon"><a class="hi-icon">GD</a></div>
						<div class="contain-icon"><a class="hi-icon">Prog</a></div>
						<div class="contain-icon"><a class="hi-icon">Graph</a></div>
						<div class="contain-icon"><a class="hi-icon">Son</a></div>
					</div>
					<input type="submit" id="envoi" class="btn-envoi" value="Envoyer">
				</div>

			</form>
		</div>
	</div>

{/if}