# FindGold - Application d'orpaillage

Application web pour aider les orpailleurs à trouver des spots potentiels d'or en France, en utilisant des données géologiques et des analyses avancées.

## Fonctionnalités

- Recherche de spots d'orpaillage près d'une localisation
- Analyse géologique des cours d'eau
- Identification des formations favorables à l'or
- Visualisation des points d'intérêt sur carte
- Recommandations de portions à prospecter

## Installation

1. Clonez le dépôt
   ```bash
   git clone https://github.com/votre-username/findgold.git
   cd findgold
   ```

2. Installez les dépendances
   ```bash
   npm install
   ```

3. Créez un fichier `.env` à la racine du projet en vous basant sur `.env.example`
   ```bash
   cp .env.example .env
   ```

4. Ajoutez vos clés API dans le fichier `.env`
   ```
   VITE_OPENAI_API_KEY=votre_cle_api_openai
   VITE_MAPBOX_TOKEN=votre_token_mapbox
   ```

5. Lancez l'application en mode développement
   ```bash
   npm run dev
   ```

## Déploiement sur GitHub Pages

L'application est configurée pour être déployée automatiquement sur GitHub Pages via GitHub Actions.

### Configuration des secrets GitHub

Pour que le déploiement fonctionne correctement, vous devez configurer les secrets GitHub suivants :

1. Allez dans les paramètres de votre dépôt GitHub
2. Cliquez sur "Secrets and variables" > "Actions"
3. Ajoutez les secrets suivants :
   - `VITE_OPENAI_API_KEY` : Votre clé API OpenAI
   - `VITE_MAPBOX_TOKEN` : Votre token Mapbox

### Déploiement

#### Utilisation des scripts de déploiement

Pour faciliter le déploiement, deux scripts sont fournis :

- Pour Linux/Mac : `deploy-to-github.sh`
  ```bash
  chmod +x deploy-to-github.sh
  ./deploy-to-github.sh
  ```

- Pour Windows : `deploy-to-github.ps1`
  ```powershell
  .\deploy-to-github.ps1
  ```

Ces scripts vous guideront à travers le processus de déploiement.

#### Déploiement manuel

1. Poussez vos modifications sur GitHub
   ```bash
   git add .
   git commit -m "Configuration pour GitHub Pages"
   git push -u origin main
   ```

2. Activez GitHub Pages dans les paramètres de votre dépôt
   - Source : GitHub Actions

3. Le déploiement se fera automatiquement à chaque push sur la branche `main`

4. Vous pouvez aussi déclencher manuellement le déploiement :
   - Allez dans l'onglet "Actions" de votre dépôt
   - Sélectionnez le workflow "Deploy to GitHub Pages"
   - Cliquez sur "Run workflow"

## Technologies utilisées

- React
- TypeScript
- Vite
- OpenAI API
- Mapbox
- Leaflet

## Structure du projet

- `src/components` : Composants React réutilisables
- `src/pages` : Pages de l'application
- `src/services` : Services pour les API externes
- `src/assets` : Images et ressources statiques

## Contribution

Les contributions sont les bienvenues ! N'hésitez pas à ouvrir une issue ou une pull request.

## Licence

Ce projet est sous licence MIT.
