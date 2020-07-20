# Deploy an Ansible Dev Environment to the Cloud

## Deploy to AWS

## Deploy to Azure

```bash
ansible-playbook deployAzureDevEnv.yaml
```

````bash
docker run -it -w /sln -v "$(pwd)":/sln --rm \
-e "AZURE_SUBSCRIPTION_ID=" \
-e "AZURE_CLIENT_ID=" \
-e "AZURE_SECRET=" \
-e "AZURE_TENANT=<tenant>" \
duffney/ansible:azure
````
