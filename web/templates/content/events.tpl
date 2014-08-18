{*
	Afficher la liste des events stockés dans $core->Events
*}

<div class="contains padding-supp">

	<div class="second-nav">
		<nav class="nav-events">
			<ul>
				<li><a href="events/archives/" {if $core->sousMenu =='archives'} class="selected"{/if} >Archives</a></li>
				<li><a href="events/" {if $core->sousMenu =='a_venir'} class="selected"{/if} >À venir</a></li>
			</ul>
		</nav>
	</div>

	<div class="contain-events">

		{foreach from=$core->Events item="event"}
			
			{if $event.PlusieursPlaces} <!-- S'il y a plusieurs places dans l'événement, on met une div -->
				<div class="liste_events">
			{else} <!-- Sinon, on met un lien avec la seule place directement dans l'url -->
				 <a href="event/{$event.url}/{$event.places.url}/" class="liste_events">
			{/if}
			

				<h1 class="titre-1 padding-suppl">{$event.name}</h1>
				
				<p class="info_sup">12 Mai - 14 Mai</p>

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
</div>