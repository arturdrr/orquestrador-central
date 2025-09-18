#!/bin/bash
set -e

echo "Iniciando instalação da Documentação Geral..."

command -v mkdocs >/dev/null 2>&1 || echo "mkdocs não encontrado. Instale para editar e gerar docs."

echo "Documentação pronta para uso."
