#
# Validation rules for Azure Kubernetes Service (AKS)
#

# Synopsis: AKS clusters should have minimum number of nodes for failover and updates
Rule 'Azure.AKS.MinNodeCount' -If { ResourceType 'Microsoft.ContainerService/managedClusters' } -Tag @{ severity = 'Important'; category = 'Reliability' } {
    Hint 'Use at least three (3) agent nodes'

    $TargetObject.Properties.agentPoolProfiles[0].count -ge 3
}

# Synopsis: AKS cluster should meet the minimum version
Rule 'Azure.AKS.Version' -If { ResourceType 'Microsoft.ContainerService/managedClusters' } -Tag @{ severity = 'Important'; category = 'Operations management' } {
    $minVersion = [Version]$Configuration.minAKSVersion

    Hint "Upgrade Kubernetes to at least $minVersion"

    ([Version]$TargetObject.Properties.kubernetesVersion) -ge $minVersion
} -Configure @{ minAKSVersion = '1.13.5' }

# Synopsis: AKS cluster should use role-based access control
Rule 'Azure.AKS.UseRBAC' -If { ResourceType 'Microsoft.ContainerService/managedClusters' } -Tag @{ severity = 'Important'; category = 'Security configuration' } {
    $TargetObject.Properties.enableRBAC
}