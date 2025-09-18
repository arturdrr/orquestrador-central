#!/bin/bash
set -e

echo "Iniciando instalação de Configs Comuns..."

# Exemplo: copiar hooks git
if [ -d ./git-hooks ]; then
  cp -r git-hooks/* ~/.git-templates/hooks/ || true
fi

echo "Configurações comuns instaladas."
