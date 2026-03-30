#!/usr/bin/env bash

# Script para reinicializar PostgreSQL con Homebrew/Linuxbrew
# ⚠️ Borra todas las bases de datos previas, úsalo solo en entornos de desarrollo

set -e

echo "Deteniendo servicio PostgreSQL..."
brew services stop postgresql@14 || true

echo "Eliminando directorio de datos..."
rm -rf /home/linuxbrew/.linuxbrew/var/postgresql@14

echo "Creando directorio limpio..."
mkdir -p /home/linuxbrew/.linuxbrew/var/postgresql@14

echo "Inicializando nuevo cluster..."
initdb --locale=C -E UTF8 /home/linuxbrew/.linuxbrew/var/postgresql@14

echo "Arrancando servicio PostgreSQL..."
brew services start postgresql@14

echo "Creando usuario superusuario 'postgres'..."
createuser --superuser postgres

echo "✅ PostgreSQL reinicializado y usuario 'postgres' creado."

