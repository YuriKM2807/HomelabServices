#!/bin/bash
echo "Parando todos os serviços..."

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

echo "-> Parando Forgejo..."
cd "$DIR/forgejo" && docker compose down

echo "-> Parando Vaultwarden..."
cd "$DIR/vaultwarden" && docker compose down

echo "-> Parando Site Stirling"
cd "$DIR/stirling" && docker compose down

echo "Todos os serviços foram desligados com sucesso!"
