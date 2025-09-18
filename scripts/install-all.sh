#!/bin/bash
set -e
source ./scripts/utils.sh

echo "Iniciando instalação modular completa..."

# Ordem de instalação conforme dependências
run_install "./install-scripts/infraestrutura-automation-install.sh"
run_install "./install-scripts/configs-comuns-install.sh"
run_install "./install-scripts/scripts-comuns-install.sh"
run_install "./install-scripts/quality-assurance-install.sh"
run_install "./install-scripts/orquestracao-multillm-mcp-rag-install.sh"
run_install "./install-scripts/documentation-install.sh"

echo "Instalação completa finalizada com sucesso."
