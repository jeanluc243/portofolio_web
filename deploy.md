Déployer sur GitHub Pages

Prépare la base : assure-toi que ton projet est déjà poussé sur GitHub (origin configuré) et que Flutter a le support Web activé (flutter config --enable-web).
Construis la version Web optimisée : depuis la racine du projet, exécute flutter build web --release --base-href /<nom-du-repo>/ (remplace <nom-du-repo> par le nom exact du dépôt GitHub). Le résultat se trouve dans build/web.
Branche gh-pages : crée (ou mets à jour) une branche dédiée contenant uniquement le contenu de build/web. Habituellement on fait git checkout -b gh-pages, on supprime tout sauf le dossier build/web, on déplace son contenu à la racine et on commit. Une alternative courante est d’utiliser git subtree push --prefix build/web origin gh-pages.
Publie : pousse la branche gh-pages sur GitHub (git push -u origin gh-pages). Active ensuite GitHub Pages dans les paramètres du dépôt (Settings → Pages → Branch gh-pages / root).
Vérifie : une fois la publication propagée (quelques minutes), ton site sera disponible à https://<ton-utilisateur>.github.io/<nom-du-repo>/. Pense à mettre à jour l’URL de base dans ton code si tu utilises des liens absolus.