<div class="contains padding-supp">
	<p class="text-acc">{$core->Intro.text}</p>

	<h1 class="titre-1">Les évènements à venir</h1>

	{include file="commun/events.tpl"}

	<h1 class="titre-1">Les jeux de la semaine</h1>

	<ul class="list-jeux">
		{foreach from=$core->Jeux item="jeu"}
			<li class="jeu">
				<div class="jeu-img">
					<img src="img/{$jeu.img_max}" alt="" />
				</div>
				<div class="jeu-text">
					<h2 class="titre-jeu">{$jeu.name}</h2>
					<img class="badge" src="img/badges/badge-{$jeu.name_event.id}.png" />
					<p class="event">{$jeu.name_event.name}</p>
					<p class="desc">{$jeu.descr|truncate:400}</p>
					<a href="{$jeu.url}" class="lien-jeu">Jouer</a>
				</div>
			</li>
		{/foreach}
	</ul>

</div>