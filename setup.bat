az login
az provider register --namespace Microsoft.ContainerInstance
az group create --location "eastus2" --name "bicepdemo"
az deployment group create --resource-group bicepdemo --template-file main.bicep --parameters containerGroupName=bicepdemo imageName=nginx:latest
@pause