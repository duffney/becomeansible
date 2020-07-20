#docker run -it -w /sln -v "$(pwd)":/sln --rm -e "AZURE_SUBSCRIPTION_ID=dc4a17ec-4363-4f1e-b019-e71a4a15dc1c" -e "AZURE_CLIENT_ID=8becd8e7-1dd5-45bc-af89-3a455c0a07fd" -e "AZURE_SECRET=<Password>" -e "AZURE_TENANT=e0d9abbc-a5c2-4590-aa27-86b9a8be4f6e" duffney/ansibleopsbox:latest
[CmdletBinding()]
param (
    [string] $SubscriptionId = ([regex]::Matches((Get-AzContext).Name,'\((.*?)\)')).groups[1].value,
    [string] $ServicePrincipal,
    [Security.SecureString] $Password
)

$clientid=(Get-AzADServicePrincipal -DisplayName $($ServicePrincipal)).ApplicationId.Guid

$secret=ConvertFrom-SecureString $password -AsPlainText

$tenantid=(Get-AzSubscription -SubscriptionId $SubscriptionId).TenantId

docker run -it -w /ansible --rm --volume ""$PSScriptRoot":/ansible" `
-e "AZURE_SUBSCRIPTION_ID=$($SubscriptionId)" `
-e "AZURE_CLIENT_ID=$($clientid)" `
-e "AZURE_SECRET=$($secret)" `
-e "AZURE_TENANT=$($tenantid)" `
duffney/ansible:azure