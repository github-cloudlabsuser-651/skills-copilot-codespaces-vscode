# Define parameters
$resourceGroupName = "myResourceGroup"
$location = "West US"
$storageAccountName = "mystorageaccount"

# Login to Azure
Connect-AzAccount

# Check if resource group exists, if not create one
$resourceGroup = Get-AzResourceGroup -Name $resourceGroupName -ErrorAction SilentlyContinue
if (!$resourceGroup) {
    New-AzResourceGroup -Name $resourceGroupName -Location $location
}

# Check if storage account exists, if not create one
$storageAccount = Get-AzStorageAccount -ResourceGroupName $resourceGroupName -Name $storageAccountName -ErrorAction SilentlyContinue
if (!$storageAccount) {
    New-AzStorageAccount -ResourceGroupName $resourceGroupName -Name $storageAccountName -Location $location -SkuName Standard_LRS
}