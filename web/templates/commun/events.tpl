<div class="contain-events">

	{foreach from=$core->Events item="event"}
		
		{if $event.PlusieursPlaces} <!-- S'il y a plusieurs places dans l'événement, on met une div -->
			<div class="liste_events">
		{else} <!-- Sinon, on met un lien avec la seule place directement dans l'url -->
			 <a href="event/{$event.url}/{$event.places.url}/" class="liste_events">
		{/if}
		
			<img class="badge" src="img/badges/badge-{$event.id}.png" />

			<h1 class="titre-1 padding-suppl">{$event.name}</h1>
			
			<p class="info_sup"><span class="icon-calendar"></span>{$event.date_start|date_format:"%e %B"} - {$event.date_end|date_format:"%e %B"}</p>

			{if $event.PlusieursPlaces} <!-- S'il y a plusieurs places dans l'événement, on met un menu les affichant toutes -->

				<ul class="liste_places">
					{foreach from=$event.places item="place"}

						<li class="event_place"><a href="event/{$event.url}/{$place.url}/">{$place.location_short}</a></li>
					
					{/foreach}
				</ul>				

			{else} <!-- Sinon, on écrit juste le nom de la seule place -->

				<p class="info_sup">{$event.places.location_short}</p>

			{/if}

		{if $event.PlusieursPlaces}
			</div>
		{else}
			</a>
		{/if}

	{/foreach}

</div>