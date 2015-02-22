<div class="wrapper">

	<div class="contain-g">

		<a href="." class="logo">Jam Shaker</a>

		<nav class="menu-admin">
			<ul>
				<li class="item"><a class="item-a" href="">Actualités</a></li>
				<li class="item"><a class="item-a" href="">Jeux</a></li>
				<li class="item"><a class="item-a" href="">Évènements</a></li>
			</ul>
		</nav>

	</div>

	<div class="contain-d">
		<h1 class="titre-h1">Actualités</h1>
		<hr class="separateur">

		<h2 class="titre-h2">Présentations</h2>

		<form action="#" class="form-admin" enctype="multipart/form-data" name="nom_formulaire" method="post">
			<ul>
				<li class="item-form">
					<label for="nom" class="label">Nom :</label>
					<input id="nom" type="text" class="input-text" name="nom">
				</li>
				<li class="item-form">
					<label for="legend" class="label">Légende :</label>
					<input id="legend" type="text" class="input-text" name="legend">
				</li>
				<li class="item-form">
					<label for="texte" class="label">Texte :</label>
					<textarea id="texte" class="input-textarea" name="texte" rows="8"></textarea>
				</li>
				<li class="item-form">
					<label class="label">Localisation :</label>
					<div class="map" id="map">
						<input type="hidden" id="map-lat" value="46.192609">
						<input type="hidden" id="map-lng" value="6.235331">
						<input type="hidden" id="map-zoom" value="12">
					</div>
					<a href="." class="btn-map">Localisation</a>
				</li>
				<li class="item-form">
					<label class="label">Images :</label>
					<div class="img-miniature">

						<div class="bloc-img">
							<img class="img" src="../web/img/img-miniature.jpg">
							<div class="cache">
								<a href="" class="icon icon-modif"></a>
								<a href="" class="icon icon-supp"></a>
							</div>
						</div>
						<div class="bloc-img">
							<img class="img" src="../web/img/img-miniature.jpg">
							<div class="cache">
								<a href="" class="icon icon-modif"></a>
								<a href="" class="icon icon-supp"></a>
							</div>
						</div>
						<div class="ajouter"><a class="ajout-a" href="">Ajouter une image...</a></div>
					</div>
				</li>
				<li class="item-form">
					<label for="selection" class="label">Selection :</label>
					<select id="selection" class="input-select" name="sujet">
						<option value="">Proposition 1</option>
						<option value="commercial">...obtenir un rensignement commercial</option>
						<option value="recrutement">...joindre le service recrutement</option>
						<option value="vendre">...vendre un bien ou un terrain</option>
					</select>
				</li>
				<li class="item-form">
					<label for="selection" class="label">Radio :</label>
					<div class="btn-radio">
						<div class="bloc-radio">
							<input type="radio" name="rep" value="oui" id="oui" checked="checked" class="input-radio" /><label for="oui" class="label-radio">Oui</label>
						</div>
						<div class="bloc-radio">
							<input type="radio" name="rep" value="non" id="non" class="input-radio"/><label for="non" class="label-radio">Non</label>
						</div>
					</div>
				</li>
				<li class="item-form">
					<label for="selection" class="label">Checkbox :</label>
					<div class="btn-checkbox">
						<div class="bloc-checkbox">
							<input type="checkbox" name="case" id="case" class="input-checkbox" /> <label for="case" class="label-checkbox">Ma case à cocher</label>
						</div>
						<div class="bloc-checkbox">
							<input type="checkbox" name="case" id="case" class="input-checkbox" /> <label for="case" class="label-checkbox">Ma case à cocher</label>
						</div>
					</div>
				</li>
				<li class="item-form">
					<label for="selection" class="label">Date :</label>
					<input type="text" class="input-text" id="datepicker" name="date">
				</li>
				<li class="item-form">
					<label for="selection" class="label">Document PDF :</label>
					<div class="document-joint">
						<div class="bloc-fichier">
							<p class="nom-fichier">Nom du fichier</p>
							<div class="option">
								<a href="" class="icon icon-modif"></a>
								<a href="" class="icon icon-supp"></a>
							</div>
						</div>
						<div class="bloc-fichier">
							<p class="nom-fichier">Nom du fichier</p>
							<div class="option">
								<a href="" class="icon icon-modif"></a>
								<a href="" class="icon icon-supp"></a>
							</div>
						</div>
						<div class="ajouter"><a class="ajout-a" href="" id="test">Ajouter un fichier...</a></div>
					</div>
				</li>
				<li class="item-form">
					<label for="selection" class="label">CkEditor :</label>
					<div class="textarea-ckeditor">
						<textarea class="fckeditor" name="fckeditor"></textarea>
					</div>
				</li>
				<li class="item-form">
					<input type="submit" value="Envoyer" class="btn-action-form">
					<input type="submit" value="Annuler" class="btn-action-form">
				</li>
			</ul>
		</form>
	</div>
	
</div>