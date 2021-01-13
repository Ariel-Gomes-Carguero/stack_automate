#!/bin/bash


#####   NOME:            automate.sh
#####   VERSÃO:          1.0
#####   DESCRIÇÃO:       Cria uma stack automatizada infra as code (Terraform + Ansible).
#####   DATA DA CRIAÇÃO: 12/01/2021
#####   ESCRITO POR:     Ariel Gomes
#####   E-MAIL:          arieldesenvolvedor@gmail.com
#####   LICENÇA:         GPLv3
#####   PROJETO:         https://github.com/arielgs/terraform_labs.git



echo "################# TERRAFORM INIT ##################"

cd terraform/; terraform init

echo "################# CRIANDO INFRA NA AWS ##################"

terraform apply -auto-approve

echo "################# CONFIGURANDO A INFRA COM ANSIBLE ##################"

cd .. ; ansible-playbook ansible/tasks/main.yml -i terraform/inventory

