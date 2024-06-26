# Define parameters
$resourceGroupName = "myResourceGroup"
$location = "West US"
$Name = "mystorageaccount"

# Create a resource group
New-AzResourceGroup -Name $resourceGroupName -Location $location

# Create a storage account
New-AzStorageAccount -ResourceGroupName $resourceGroupName -Name $Name -Location $location -SkuName Standard_LRS