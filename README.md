planet
======

Données pour le planet.sysadmin-fr.org

# Rajout d'un feed

Pour rajouter votre feed, créer un fichier (avec votre nick/nom) dans le répertoire feeds et le contenu suivant :

	[http://blog.asyd.net/feed/]
	name = Bruno Bonfils

## Options

Vous pouvez rajouter une photo/avatar en rajoutant le code :

	face = asyd.jpg

Auquel cas, mettre l'image dans le dossier images.

# Développement

Si vous êtes motivés pour modifier le templates (répertoire theme), pour tester :

* Installer http://www.intertwingly.net/code/venus/ (il y a quelques dépendences)
* Modifier et lancer le script generate-planet.zsh
