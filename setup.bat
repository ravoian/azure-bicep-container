cmd /k az login
cmd /k az provider register --namespace Microsoft.ContainerInstance
cmd /k az group create --location "eastus2" --name "bicepdemo"
cmd /k az deployment group create --resource-group bicepdemo --template-file main.bicep --parameters containerGroupName=bicepdemo imageName=nginx:latest
@pause