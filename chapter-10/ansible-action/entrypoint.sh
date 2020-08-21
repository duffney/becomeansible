#!/bin/bash

echo $ANSIBLE_VAULT_PASSWORD >> .vault

ansible-playbook -i hosts_azure_rm.yml site.yml --vault-password-file .valut