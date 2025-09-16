# Install Azure CLI
Invoke-WebRequest -Uri https://aka.ms/installazurecliwindows -OutFile AzureCLI.msi
Start-Process msiexec.exe -ArgumentList '/I AzureCLI.msi /quiet' -Wait
Remove-Item -Path AzureCLI.msi
Write-Host "Azure CLI installed successfully."

# Create directory C:\mgmt-admin
New-Item -Path "C:\mgmt-admin" -ItemType Directory -Force
Write-Host "Directory C:\mgmt-admin created successfully."