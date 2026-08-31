#!/bin/bash
echo "Iniciando todos os serviços..."

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

echo "-> Iniciando Forgejo..."
cd "$DIR/forgejo" && docker compose up -d

echo "-> Parando Vaultwarden..."
cd "$DIR/vaultwarden" && docker compose up -d

echo "-> Parando Site Stirling"
cd "$DIR/stirling" && docker compose up -d

echo "Todos os serviços foram ligados com sucesso!"
