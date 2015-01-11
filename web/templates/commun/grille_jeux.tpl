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
				{if $jeu.participants}
				<p class="text"><span>Jamers :</span> <br> {$jeu.participants}</p>
				{/if}
				{if $jeu.url}	
					<a class="lien-jeu" href="{$jeu.url}" target="blank">Jouer</a>
				{/if}
			</div>
		</div>
	</div>
</li>