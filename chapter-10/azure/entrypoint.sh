#!/bin/bash

echo $ANSIBLE_VAULT_PASSWORD >> .vault

ansible-galaxy install -r roles/requirements.yml

if ! ansible-playbook -i hosts_azure_rm.yml site.yml --vault-password-file .vault; then
  echo "Ansible failed!"
  rm .vault
  exit 1
else
  rm .vault
fi



# if ! ansible-playbook; then
#   echo "Ansible failed!"
#   exit 1
# fi
# exit_status=$?
# if [ $exit_status -ne 0 ]; then
#     echo "Ansible failed!"
# fi
# exit $exit_status