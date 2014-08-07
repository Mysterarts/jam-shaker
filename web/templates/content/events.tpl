{*
	Afficher la liste des events stockés dans $core->Events
*}

<div class="contains">

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
			
			<a href="event/{$event.url}/" class="liste_events" href=".">

				<h1 class="titre-1">{$event.name}</h1>
				
				<p class="info_sup">12 Mai - 14 Mai</p>

				<div>
					<ul>
					</ul>
				</div>

			</a>
			
		{/foreach}

	</div>
</div>