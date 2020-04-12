# become Ansible - Chapter 3

## Stat AWS Ansible Container

```bash
docker run -it --rm --volume "$(pwd)":/ansible --workdir /ansible duffney/ansible:aws
```

## Export Access Keys

```bash
export AWS_ACCESS_KEY_ID='<Access Key>'
export AWS_SECRET_ACCESS_KEY='<Secret Access Key>'
```

## Try it now

### Delete the environment

```bash
ansible-playbook aws_delete_ansible_env.yaml
```

### Re-create the environment

```bash
ansible-playbook aws_deploy_ansible_env.yaml -e 'password=<Password>'
```

_Replace `<Password>` with the ansible user password._