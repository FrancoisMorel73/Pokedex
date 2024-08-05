# Pokedex

## Présentation

Bienvenue dans l'application Pokedex. Ce projet est une application permettant d'afficher une liste de Pokemon et de pouvoir accéder à ses caractérisques détaillées. Vous avez la possibilité d'ajouter de modifier ou de supprimer un pokemon depuis l'application.
Ce projet a été développé en PHP avec le framework Symfony (version 7.1), le moteur de template Twig, Bootstrap pour générer la quasi totalité du CSS, et MySQL (via l'ORM Doctrine) pour la gestion de la base de données.

## Résultat

Quelques aperçus de l'application :

![Page d'accueil en thème light avec les résultats filtrer par type "glace"](public/résultats/home-filter-glace.png)

![Page d'accueil en thème dark en version mobile](public/résultats/home-mobile.png)

![Détail d'un pokemon en version ordinateur et thème light](public/résultats/detail.png)

![Détail d'un pokemon en version mobile et thème dark](public/résultats/detail-mobile.png)

## Fonctionnalités

- Thème Dark / Light
- Filtrer les pokemons par type en cliquant sur le bouton correspondant
- Filtrer les pokemons en faisant une recherche
- L'application est responsive et s'adapte donc aussi bien sur mobile que sur ordinateur
- Ajouter / modifier / supprimer un pokemon de manière sécurisée
- URL dynamique

## Installation

NB: dans le dossier `public/data` se trouve un fichier SQL contenant l'ensemble des Pokémon de la 1ère génération qui peut être ajouté une fois le projet installé

### Prérequis

- PHP 8.2 ou supérieur
- Composer
- Un serveur web (Apache, Nginx, etc.)
- Une base de donnée (MySQL, PostgreSQL, SQLite, etc.)

### Etapes d'installation

1. **Cloner le dépôt**

```bash
   git clone https://github.com/votre-nom-utilisateur/pokedex.git
```

2. **Installer les dépendances**

```bash
    composer install
```

3. **Configurer l'environnement**

Copier le fichier '.env' pour créer votre propre fichier de configuration '.env.local'

4. **Paramétrer la connexion à votre base de données**

mise à jour de la ligne suivante :

```bash
    DATABASE_URL="mysql://username:password@127.0.0.1:3306/database_name?serverVersion=8.0.32&charset=utf8mb4"
```

5. **Créer la base de données et exécuter les migrations**

```bash
    php bin/console doctrine:database:create
    php bin/console make:migration
    php bin/console doctrine:migrations:migrate
```

6. **Lancer le serveur de développement**

```bash
    symfony server:start
```

ou

```bash
    php -S localhost:8000 -t public
```

## Contribution

Les contributions sont les bienvenus ! Si vous avez des idées d'améliorations ou des bugs à signaler, n'hésitez pas à ouvrir une issue ou un pull request.
