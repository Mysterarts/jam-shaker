<div id="grille-jeux" class="contains-jeux">

    {foreach from=$core->Events item="event"}

        <div class="contains">
            <img class="badge-event" src="img/badges/badge-{$event.id}.png" />
            <h1 class="titre-1 titre-badge">{$event.name}</h1>
        </div>

        <ul class="grille-jeux">

            {foreach from=$event.jeux item="jeu"}

                <li class="item-jeu">

                    <a class="lien_jeu" href="">
                        <img src="img/{$jeu.img_min}" alt="{$jeu.name}"/>
                    </a>

                    <div class="desc-jeu">
                        <div class="fleche"></div>
                        <div class="contenu-desc">
                            <a class="icon-close"></a>
                            <div class="img-desc">
                                <img src="img/{$jeu.img_max}" alt="{$jeu.name}"/>
                            </div>
                            <div class="text-desc">
                                <h2 class="titre-jeu">{$jeu.name}</h2>
                                <p class="text">{$jeu.descr}</p>
                                <p class="text"><span>Jamers :</span> <br> {$jeu.participants}</p>
                                <a class="lien-jeu" href="{$jeu.url}" target="blank">Jouer</a>
                            </div>
                        </div>
                    </div>
                </li>

            {/foreach}

        </ul>
    
    {/foreach}

</div>