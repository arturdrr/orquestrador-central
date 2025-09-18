#!/bin/bash
set -e

echo "Iniciando instalação da Orquestração Multi-LLM, MCP e RAG..."

command -v python3 >/dev/null 2>&1 || { echo >&2 "Python3 não encontrado. Instale-o."; exit 1; }
command -v pip3 >/dev/null 2>&1 || { echo >&2 "pip3 não encontrado. Instale-o."; exit 1; }

if [ -f requirements.txt ]; then
  pip3 install -r requirements.txt
fi

echo "Orquestração AI configurada."
