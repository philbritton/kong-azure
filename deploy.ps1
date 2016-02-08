#Indicate your new ResourceGroupName
$resourceGroupName = "kong1";
$subscriptionId = "Put Your Subscription Id Here";
$location = "West Europe"


Login-AzureRmAccount

Set-AzureRmContext -SubscriptionId $subscriptionId

New-AzureRmResourceGroup -Name $resourceGroupName -Location $location
New-AzureRmResourceGroupDeployment -ResourceGroupName $resourceGroupName -TemplateFile .\azuredeploy.json -TemplateParameterFile .\azuredeploy.parameters.json
