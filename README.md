![logo AMD](/assets/images/logo-transparent.png)

# Site internet de l'association musique et danse (AMD) de Pont Saint Martin

Code source permettant de générer le site internet https://amd-psm.fr.

## Fonctionnement

Le site est produit par le générateur de site statique [jekyll](https://jekyllrb.com/) à partir de la branche `main` de ce dépôt. 
Il est publié automatiquement sur une [GitHub Pages](https://pages.github.com/) :

- à chaque modification poussée sur la branche `main`,
- toutes les nuits.

Il utilise le thème [Minimal Mistakes](https://mmistakes.github.io/minimal-mistakes/).

## Contribuer

Il suffit de ["forker"](https://docs.github.com/fr/pull-requests/collaborating-with-pull-requests/working-with-forks/fork-a-repo) puis de faire une ["pull request"](https://docs.github.com/fr/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-a-pull-request).

Si vous ne souhaitez pas modifier le code vous même, vous pouvez créer une [issue](https://github.com/amd-pontsaintmartin/amd-pontsaintmartin.github.io/issues) en précisant les modifications que vous souhaitez apporter.

## Tester le site chez soi

Après avoir suivi les [instructions d'installation de jekyll](https://jekyllrb.com/docs/installation/) et récupéré le code source (par exemple avec un `git clone`), le site peut être affiché dans le navigateur via la commande

```shell
bundle exec jekyll serve
```
lancée depuis le dossier contenant le code source.

Le site est alors accessible à l'adresse http://localhost:4000.


## Organistation du code

### Actualités

Une actualité correpond à un fichier du dossier [_posts](_posts). Les fichiers actualités doivent suivre les conventions de nommage décrites [ici](https://jekyllrb.com/docs/posts/).

### Professeurs

Les présentations des professeurs sont sous la forme de [collections](https://jekyllrb.com/docs/collections/).
Un fichier doit être créé pour chaque professeur dans le dossier [_professeurs_danse](_professeurs_danse) pour la danse et [_professeurs_musique](_professeurs_musique) pour la musique.

### Images

Les fichiers images sont regroupés dans le dossier [assets/images](assets/images).
