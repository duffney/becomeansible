# become Ansible - Chapter 3

## Before you begin

## Try it now

### Redeploy the Ansible Development Environment

#### Delete the Ansible environment

```bash
ansible-playbook aws_delete_ansible_env.yaml
```

#### Deploy the environment

```bash
ansible-playbook aws_deploy_ansible_env.yaml -e 'password=<Password>'
```

_Replace `<Password>` with the ansible user password._

## Update the Ansible Docker container

1. Update Dockerfile - reference `./Dockerfile`
2. Build docker image
    `docker build -t duffney/ansible:latest .`

## Author's Notes

### Stat AWS Ansible Container

```bash
docker run -it --rm --volume "$(pwd)":/ansible --workdir /ansible duffney/ansible:aws
```

### Export Access Keys

```bash
export AWS_ACCESS_KEY_ID='<Access Key>'
export AWS_SECRET_ACCESS_KEY='<Secret Access Key>'
```
