#!/bin/bash
set -e

echo "Iniciando instalação de Scripts Comuns..."

# Tornar scripts executáveis
find ./ -name "*.sh" -exec chmod +x {} \;

echo "Scripts comuns prontos para uso."
