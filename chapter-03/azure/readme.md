# Deploy Ansible Dev Environment to Azure

## Start the Container

## Try it now

### Delete the environment

```bash
ansible-playbook azure_delete_ansible_env.yaml
```

### Re-create the environment

```bash
ansible-playbook azure_deploy_ansible_env.yaml -e 'password=<Password>'
```

_Replace `<Password>` with the ansible user password._
