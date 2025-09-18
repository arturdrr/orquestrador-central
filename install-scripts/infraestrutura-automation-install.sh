#!/bin/bash
set -e

echo "Iniciando instalação do Infraestrutura Automation..."

command -v terraform >/dev/null 2>&1 || { echo >&2 "Terraform não encontrado, por favor instale."; exit 1; }
command -v ansible >/dev/null 2>&1 || { echo >&2 "Ansible não encontrado, por favor instale."; exit 1; }

if [ -d ./terraform ]; then
  echo "Inicializando e aplicando Terraform..."
  terraform -chdir=terraform init
  terraform -chdir=terraform apply -auto-approve
fi

if [ -d ./ansible ]; then
  echo "Executando playbook Ansible..."
  ansible-playbook ansible/playbook.yml
fi

echo "Instalação Infraestrutura Automation concluída."
