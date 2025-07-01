#!/bin/bash
# Script to start the production environment

echo "🚀 Démarrage de l'environnement PROD..."

# Passe à la branche principale du dépôt Git
git checkout main

# Met à jour la branche locale avec les dernières modifications du dépôt distant
git pull origin main

# Utilise Docker Compose pour construire et démarrer les conteneurs définis dans le fichier docker-compose.prod.yaml
# -p : Spécifie un nom de projet pour les conteneurs et autres ressources
# --env-file : Spécifie un fichier d'environnement à utiliser pour les variables d'environnement
# -f : Spécifie le fichier Docker Compose à utiliser
# up : Crée et démarre les conteneurs
# --build : Force la reconstruction des images avant de démarrer les conteneurs
# -d : Démarre les conteneurs en mode détaché (en arrière-plan)
docker-compose -p videgrenier-prod --env-file .env.prod -f docker-compose.prod.yaml up --build -d

echo "🎉 Environnement PROD démarré sur http://videgrenier-prod:9089"
