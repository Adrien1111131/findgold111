# Guide de déploiement sur GitHub Pages

Ce guide vous explique comment déployer votre application FindGold sur GitHub Pages.

## Prérequis

1. Un compte GitHub
2. Git installé sur votre ordinateur
3. Les clés API nécessaires (OpenAI et Mapbox)

## Étapes de déploiement

### 1. Créer un nouveau dépôt sur GitHub

1. Allez sur [GitHub](https://github.com) et connectez-vous à votre compte
2. Cliquez sur le bouton "New" pour créer un nouveau dépôt
3. Nommez votre dépôt `findgold`
4. Choisissez "Public" pour que GitHub Pages fonctionne
5. Ne cochez pas "Initialize this repository with a README"
6. Cliquez sur "Create repository"

### 2. Initialiser le dépôt Git local

```bash
# Dans le répertoire de votre projet
git init
git add .
git commit -m "Initial commit"
```

### 3. Lier votre dépôt local au dépôt GitHub

```bash
# Remplacez YOUR_USERNAME par votre nom d'utilisateur GitHub
git remote add origin https://github.com/YOUR_USERNAME/findgold.git
git push -u origin master
```

### 4. Configurer les secrets GitHub

1. Allez dans les paramètres de votre dépôt GitHub
2. Cliquez sur "Secrets and variables" > "Actions"
3. Cliquez sur "New repository secret"
4. Ajoutez les secrets suivants :
   - Nom : `VITE_OPENAI_API_KEY`, Valeur : votre clé API OpenAI
   - Nom : `VITE_MAPBOX_TOKEN`, Valeur : votre token Mapbox

### 5. Activer GitHub Pages

1. Allez dans les paramètres de votre dépôt GitHub
2. Faites défiler jusqu'à la section "GitHub Pages"
3. Dans "Source", sélectionnez "GitHub Actions"

### 6. Déclencher le déploiement

Le déploiement se déclenchera automatiquement après votre premier push. Vous pouvez aussi le déclencher manuellement :

1. Allez dans l'onglet "Actions" de votre dépôt
2. Sélectionnez le workflow "Deploy to GitHub Pages"
3. Cliquez sur "Run workflow"

### 7. Accéder à votre site

Une fois le déploiement terminé, votre site sera disponible à l'adresse :
```
https://YOUR_USERNAME.github.io/findgold/
```

## Dépannage

### Erreur de déploiement

Si vous rencontrez des erreurs lors du déploiement, vérifiez :

1. Que les secrets GitHub sont correctement configurés
2. Que le workflow GitHub Actions est présent dans votre dépôt
3. Que vous avez activé GitHub Pages dans les paramètres

### Problèmes d'affichage

Si votre site s'affiche mais sans style ou avec des erreurs :

1. Vérifiez que le base path dans `vite.config.ts` est correct
2. Assurez-vous que les chemins d'accès aux ressources sont relatifs
3. Vérifiez les erreurs dans la console du navigateur
