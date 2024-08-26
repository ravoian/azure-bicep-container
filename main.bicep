param containerGroupName string = 'nginx-container-group'
param containerName string = 'nginx-container'
param location string = 'East US 2' 
param imageName string = 'nginx:latest'
param cpuCores int = 1
param memoryInGB int = 2 

resource containerGroup 'Microsoft.ContainerInstance/containerGroups@2023-05-01' = {
  name: containerGroupName
  location: location
  properties: {
    containers: [
      {
        name: containerName
        properties: {
          image: imageName
          resources: {
            requests: {
              cpu: cpuCores
              memoryInGB: memoryInGB
            }
          }
          ports: [
            {
              port: 80
            }
          ]
        }
      }
    ]
    osType: 'Linux'
    restartPolicy: 'Always'
  }
}
