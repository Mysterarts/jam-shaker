<div class="contains padding-supp">
	<p class="text-acc">{$core->Intro.text}</p>

	<h1 class="titre-1">Les évènements à venir</h1>

	{include file="commun/events.tpl"}

	<h1 class="titre-1">Les jeux de la semaine</h1>

</div>

<div id="grille-jeux">
	<ul class="grille-jeux">
		{foreach from=$core->Jeux item="jeu"}
			{include file="commun/grille_jeux.tpl"}
	    {/foreach}
	</ul>
</div>
