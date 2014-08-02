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

	<div class="contains">
		<div class="schema">
			<canvas id="doughnut" width="300" height="300" />
			<input type="hidden" id="gd-nb" value="10">
			<input type="hidden" id="prog-nb" value="20">
			<input type="hidden" id="graph-nb" value="30">
			<input type="hidden" id="son-nb" value="10">
		</div>
	</div>

{/if}