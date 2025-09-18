#!/bin/bash

run_install() {
  local script=$1
  echo "--------------------------------------------------"
  echo "Executando $script..."
  echo "--------------------------------------------------"
  if bash "$script"; then
    echo "[SUCESSO] $script executado com sucesso."
  else
    echo "[ERRO] Falha na execução de $script"
    exit 1
  fi
}