<div id="grille-jeux" class="contains-jeux">

    {foreach from=$core->Events item="event"}

        <div class="contains">
            <img class="badge-event" src="img/badges/badge-{$event.id}.png" />
            <h1 class="titre-1 titre-badge">{$event.name}</h1>
        </div>

        <ul class="grille-jeux">

            {foreach from=$event.jeux item="jeu"}

                {include file="commun/grille_jeux.tpl"}

            {/foreach}

        </ul>
    
    {/foreach}

</div>