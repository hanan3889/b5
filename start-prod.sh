#!/bin/bash
# Script to start the production environment

echo "Starting production containers..."
docker-compose --env-file .env.prod -f docker-compose.prod.yaml up -d
echo "Production containers started."
