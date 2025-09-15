# Variables - update as needed
$location = "eastus2"
$userPrefix = "sls"
$resourceGroupName = "tf-backend-rg"
$uniqueSuffix = (Get-Random -Maximum 99999)
$storageAccountName = "tfbe$userPrefix$uniqueSuffix"
$containerName = "$userPrefix-tf-backend-container"

az group create --name $resourceGroupName --location $location
if ($LASTEXITCODE -ne 0) { Write-Error "Resource group creation failed."; exit 1 }

az storage account create `
  --name $storageAccountName `
  --resource-group $resourceGroupName `
  --location $location `
  --sku Standard_LRS `
  --kind StorageV2 `
  --min-tls-version TLS1_2 `
  --allow-blob-public-access false
if ($LASTEXITCODE -ne 0) { Write-Error "Storage account creation failed."; exit 1 }

az storage container create `
  --name $containerName `
  --account-name $storageAccountName `
  --auth-mode login
if ($LASTEXITCODE -ne 0) { Write-Error "Container creation failed."; exit 1 }

Write-Host "Resource group, storage account, and containers created successfully."
Write-Host "Storage Account Name: $storageAccountName"
Write-Host "Container for backend: $containerName"