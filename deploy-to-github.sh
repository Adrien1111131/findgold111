#!/bin/bash

# Script pour déployer l'application sur GitHub Pages

# Vérifier si Git est installé
if ! command -v git &> /dev/null; then
    echo "Git n'est pas installé. Veuillez l'installer avant de continuer."
    exit 1
fi

# Vérifier si le dépôt est configuré
if [ ! -d .git ]; then
    echo "Initialisation du dépôt Git..."
    git init
    
    echo "Configuration du dépôt distant..."
    echo "Veuillez entrer l'URL de votre dépôt GitHub (ex: https://github.com/username/findgold.git):"
    read repo_url
    
    git remote add origin $repo_url
fi

# Ajouter tous les fichiers modifiés
echo "Ajout des fichiers modifiés..."
git add .

# Commit des modifications
echo "Commit des modifications..."
echo "Veuillez entrer un message de commit:"
read commit_message

if [ -z "$commit_message" ]; then
    commit_message="Configuration pour GitHub Pages"
fi

git commit -m "$commit_message"

# Pousser les modifications
echo "Pousser les modifications sur GitHub..."
git push -u origin main

echo "Déploiement terminé!"
echo "N'oubliez pas de configurer les secrets GitHub pour les clés API:"
echo "- VITE_OPENAI_API_KEY"
echo "- VITE_MAPBOX_TOKEN"
echo ""
echo "Et d'activer GitHub Pages dans les paramètres du dépôt (source: GitHub Actions)."
