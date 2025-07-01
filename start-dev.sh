#!/bin/bash

echo "🚀 Démarrage de l'environnement DEV..."

docker-compose --env-file .env.dev -f docker-compose.dev.yaml up -d

echo "🎉 Environnement DEV démarré sur http://localhost:8000"
