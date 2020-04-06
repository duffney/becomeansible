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
