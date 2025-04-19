# Script PowerShell pour déployer l'application sur GitHub Pages

# Vérifier si Git est installé
if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
    Write-Host "Git n'est pas installé. Veuillez l'installer avant de continuer."
    exit 1
}

# Vérifier si le dépôt est configuré
if (-not (Test-Path .git)) {
    Write-Host "Initialisation du dépôt Git..."
    git init
    
    Write-Host "Configuration du dépôt distant..."
    $repo_url = Read-Host "Veuillez entrer l'URL de votre dépôt GitHub (ex: https://github.com/username/findgold.git)"
    
    git remote add origin $repo_url
}

# Ajouter tous les fichiers modifiés
Write-Host "Ajout des fichiers modifiés..."
git add .

# Commit des modifications
Write-Host "Commit des modifications..."
$commit_message = Read-Host "Veuillez entrer un message de commit"

if ([string]::IsNullOrEmpty($commit_message)) {
    $commit_message = "Configuration pour GitHub Pages"
}

git commit -m $commit_message

# Pousser les modifications
Write-Host "Pousser les modifications sur GitHub..."
git push -u origin main

Write-Host "Déploiement terminé!"
Write-Host "N'oubliez pas de configurer les secrets GitHub pour les clés API:"
Write-Host "- VITE_OPENAI_API_KEY"
Write-Host "- VITE_MAPBOX_TOKEN"
Write-Host ""
Write-Host "Et d'activer GitHub Pages dans les paramètres du dépôt (source: GitHub Actions)."

# Pause pour voir les résultats
Write-Host "Appuyez sur une touche pour continuer..."
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
