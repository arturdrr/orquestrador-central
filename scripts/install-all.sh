#!/bin/bash
set -e
source ./scripts/utils.sh

echo "Iniciando instalação modular completa..."

run_install_external_best_practices() {
  echo "Instalando best-practices-tool..."
  pushd external/best-practices-tool
  python3 installer.py
  popd
  echo "Best-practices-tool instalado com sucesso."
}

# Ordem de instalação conforme dependência
run_install "./install-scripts/infraestrutura-automation-install.sh"
run_install_external_best_practices
run_install "./install-scripts/configs-comuns-install.sh"
run_install "./install-scripts/scripts-comuns-install.sh"
run_install "./install-scripts/quality-assurance-install.sh"
run_install "./install-scripts/orquestracao-multillm-mcp-rag-install.sh"
run_install "./install-scripts/documentation-install.sh"

echo "Instalação completa finalizada com sucesso."