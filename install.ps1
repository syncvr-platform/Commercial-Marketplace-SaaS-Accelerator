# Run this script from Azure Cloud Shell
wget https://dotnet.microsoft.com/download/dotnet/scripts/v1/dotnet-install.sh; `
chmod +x dotnet-install.sh; `
./dotnet-install.sh; `
$ENV:PATH="$HOME/.dotnet:$ENV:PATH"; `
dotnet tool install --global dotnet-ef; `
git clone https://github.com/Azure/Commercial-Marketplace-SaaS-Accelerator.git -b 7.2.1 --depth 1; `
cd ./Commercial-Marketplace-SaaS-Accelerator/deployment; `
.\Deploy.ps1 `
 -WebAppNamePrefix "syncvr" `
 -ResourceGroupForDeployment "syncvr-bussiness-we" `
 -PublisherAdminUsers "suso@syncvr.tech" `
 -Location "West Europe" `