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

	{include file="commun/events.tpl"}

</div>