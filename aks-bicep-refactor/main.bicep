// deploy a simple aks cluster with one node pool

@description('Location of AKS cluster')
param location string = resourceGroup().location

@description('Name of the AKS cluster')
param clusterName string = 'cofeeCluster'

@description('Kubernetes version')
param kubernetesVersion string

@description('Enable RBAC')
param enableRBAC bool = true

@description('Enable auto scaling')
param autoScale bool = true

@description('minimum number of nodes')
param minCount int = 1

@description('maximum number of nodes')
param maxCount int = 5

resource aksCluster 'Microsoft.ContainerService/managedClusters@2023-07-01' = {
  name: clusterName
  location: location
  identity: {
    type: 'SystemAssigned'
  }
  properties: {
    kubernetesVersion: kubernetesVersion
    enableRBAC: enableRBAC
    dnsPrefix: 'aksCluster'
    agentPoolProfiles: [
      {
        name: 'nodepool1'
        mode: 'System'
        count: 1
        vmSize: 'Standard_DS2_v2'
        osType: 'Linux'
        osDiskSizeGB: 30
        enableAutoScaling: autoScale
        minCount: minCount
        maxCount: maxCount
      }
    ]
  }
}
