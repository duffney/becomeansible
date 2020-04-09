echo 'Enter Azure Subscription Name'

read azuresubname

echo 'Enter Azure Service Principal Password'

read password

subscriptionId=$(pwsh -c "(Get-AzSubscription -SubscriptionName '$azuresubname').id")

clientid=$(pwsh -c "(Get-AzADServicePrincipal -DisplayName 'ansible').ApplicationId.Guid")

secret=$password

tenantid=$(pwsh -c "(Get-AzSubscription -SubscriptionName '$azuresubname').TenantId")

echo $subscriptionId

export AZURE_SUBSCRIPTION_ID=$subscriptionId
export AZURE_CLIENT_ID=$clientid
export AZURE_SECRET=$secret
export AZURE_TENANT=$tenantid

#System.Environment]::SetEnvironmentVariable('<variable','value', $Scope)
#Where scope is "Machine"

#. ./connect-to-azure.sh 