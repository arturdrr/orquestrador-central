#!/bin/bash
set -e

echo "Iniciando instalação do Quality Assurance..."

command -v sonar-scanner >/dev/null 2>&1 || { echo >&2 "Sonar Scanner não encontrado, por favor instale."; exit 1; }

if [ -f package.json ]; then
  echo "Instalando dependências npm para testes..."
  npm install
fi

echo "Qualidade de código pronta para execução de pipelines."
