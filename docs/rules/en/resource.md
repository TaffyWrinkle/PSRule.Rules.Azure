# Rules by resource

## Rules

The following rules are included within `PSRule.Rules.Azure`.

### All resources

Name | Synopsis | Severity
---- | -------- | --------
[Azure.Resource.AllowedRegions](Azure.Resource.AllowedRegions.md) | Resources should be deployed to allowed regions. | Awareness
[Azure.Resource.UseTags](Azure.Resource.UseTags.md) | Azure resources should be tagged using a standard convention. | Awareness
[Azure.Template.ParameterFile](Azure.Template.ParameterFile.md) | Use ARM template parameter files that are valid. | Important
[Azure.Template.TemplateFile](Azure.Template.TemplateFile.md) | Use ARM template files that are valid. | Important

### API Management

Name | Synopsis | Severity
---- | -------- | --------
[Azure.APIM.APIDescriptors](Azure.APIM.APIDescriptors.md) | API Management APIs should have a display name and description. | Awareness
[Azure.APIM.CertificateExpiry](Azure.APIM.CertificateExpiry.md) | Renew certificates used for custom domain bindings. | Important
[Azure.APIM.EncryptValues](Azure.APIM.EncryptValues.md) | API Management named values should be encrypted. | Important
[Azure.APIM.HTTPBackend](Azure.APIM.HTTPBackend.md) | Use HTTPS for communication to backend services. | Critical
[Azure.APIM.HTTPEndpoint](Azure.APIM.HTTPEndpoint.md) | Enforce HTTPS for communication to API clients. | Important
[Azure.APIM.ManagedIdentity](Azure.APIM.ManagedIdentity.md) | Use managed identities to access Azure resources. | Important
[Azure.APIM.Name](Azure.APIM.Name.md) | API Management service names should meet naming requirements. | Awareness
[Azure.APIM.ProductApproval](Azure.APIM.ProductApproval.md) | Configure products to require approval. | Important
[Azure.APIM.ProductDescriptors](Azure.APIM.ProductDescriptors.md) | API Management products should have a display name and description. | Awareness
[Azure.APIM.ProductSubscription](Azure.APIM.ProductSubscription.md) | Configure products to require a subscription. | Important
[Azure.APIM.ProductTerms](Azure.APIM.ProductTerms.md) | Set legal terms for each product registered in API Management. | Important
[Azure.APIM.Protocols](Azure.APIM.Protocols.md) | API Management should only accept a minimum of TLS 1.2. | Important
[Azure.APIM.SampleProducts](Azure.APIM.SampleProducts.md) | Remove starter and unlimited sample products. | Awareness

### App Service

Name | Synopsis | Severity
---- | -------- | --------
[Azure.AppService.ARRAffinity](Azure.AppService.ARRAffinity.md) | Disable client affinity for stateless services. | Awareness
[Azure.AppService.MinPlan](Azure.AppService.MinPlan.md) | Use at least a Standard App Service Plan. | Important
[Azure.AppService.MinTLS](Azure.AppService.MinTLS.md) | App Service should reject TLS versions older then 1.2. | Important
[Azure.AppService.PlanInstanceCount](Azure.AppService.PlanInstanceCount.md) | Use an App Service Plan with at least two (2) instances. | Single point of failure
[Azure.AppService.UseHTTPS](Azure.AppService.UseHTTPS.md) | Azure App Service apps should only accept encrypted connections. | Important

### Application Gateway

Name | Synopsis | Severity
---- | -------- | --------
[Azure.AppGw.MinInstance](Azure.AppGw.MinInstance.md) | Application Gateways should use a minimum of two instances. | Important
[Azure.AppGw.MinSku](Azure.AppGw.MinSku.md) | Application Gateway should use a minimum instance size of Medium. | Important
[Azure.AppGw.OWASP](Azure.AppGw.OWASP.md) | Application Gateway Web Application Firewall (WAF) should use OWASP 3.x rules. | Important
[Azure.AppGw.Prevention](Azure.AppGw.Prevention.md) | Internet exposed Application Gateways should use prevention mode to protect backend resources. | Critical
[Azure.AppGw.SSLPolicy](Azure.AppGw.SSLPolicy.md) | Application Gateway should only accept a minimum of TLS 1.2. | Critical
[Azure.AppGw.UseWAF](Azure.AppGw.UseWAF.md) | Internet accessible Application Gateways should use WAF. | Critical
[Azure.AppGw.WAFEnabled](Azure.AppGw.WAFEnabled.md) | Application Gateway Web Application Firewall (WAF) must be enabled to protect backend resources. | Critical
[Azure.AppGw.WAFRules](Azure.AppGw.WAFRules.md) | Application Gateway Web Application Firewall (WAF) should have all rules enabled. | Important

### Automation Service

Name | Synopsis | Severity
---- | -------- | --------
[Azure.Automation.EncryptVariables](Azure.Automation.EncryptVariables.md) | Azure Automation variables should be encrypted. | Important
[Azure.Automation.WebHookExpiry](Azure.Automation.WebHookExpiry.md) | Do not create webhooks with an expiry time greater than 1 year (default). | Awareness

### Azure Database for MySQL

Name | Synopsis | Severity
---- | -------- | --------
[Azure.MySQL.AllowAzureAccess](Azure.MySQL.AllowAzureAccess.md) | Determine if access from Azure services is required. | Important
[Azure.MySQL.FirewallIPRange](Azure.MySQL.FirewallIPRange.md) | Determine if there is an excessive number of permitted IP addresses. | Important
[Azure.MySQL.FirewallRuleCount](Azure.MySQL.FirewallRuleCount.md) | Determine if there is an excessive number of firewall rules. | Awareness
[Azure.MySQL.UseSSL](Azure.MySQL.UseSSL.md) | Enforce encrypted MySQL connections. | Critical

### Azure Database for PostgreSQL

Name | Synopsis | Severity
---- | -------- | --------
[Azure.PostgreSQL.AllowAzureAccess](Azure.PostgreSQL.AllowAzureAccess.md) | Determine if access from Azure services is required. | Important
[Azure.PostgreSQL.FirewallIPRange](Azure.PostgreSQL.FirewallIPRange.md) | Determine if there is an excessive number of permitted IP addresses. | Important
[Azure.PostgreSQL.FirewallRuleCount](Azure.PostgreSQL.FirewallRuleCount.md) | Determine if there is an excessive number of firewall rules. | Awareness
[Azure.PostgreSQL.UseSSL](Azure.PostgreSQL.UseSSL.md) | Enforce encrypted PostgreSQL connections. | Critical

### Azure Kubernetes Service

Name | Synopsis | Severity
---- | -------- | --------
[Azure.AKS.AzurePolicyAddOn](Azure.AKS.AzurePolicyAddOn.md) | Configure Azure Kubernetes Cluster (AKS) clusters to use Azure Policy add-on for Kubernetes (Preview). | Important
[Azure.AKS.DNSPrefix](Azure.AKS.DNSPrefix.md) | Azure Kubernetes Service (AKS) cluster DNS prefix should meet naming requirements. | Awareness
[Azure.AKS.ManagedIdentity](Azure.AKS.ManagedIdentity.md) | Configure AKS clusters to use managed identities for managing cluster infrastructure. | Important
[Azure.AKS.MinNodeCount](Azure.AKS.MinNodeCount.md) | AKS clusters should have minimum number of nodes for failover and updates. | Important
[Azure.AKS.Name](Azure.AKS.Name.md) | Azure Kubernetes Service (AKS) cluster names should meet naming requirements. | Awareness
[Azure.AKS.NetworkPolicy](Azure.AKS.NetworkPolicy.md) | Deploy AKS clusters with Azure Network Policies enabled. | Important
[Azure.AKS.NodeMinPods](Azure.AKS.NodeMinPods.md) | Azure Kubernetes Cluster (AKS) nodes should use a minimum number of pods. | Important
[Azure.AKS.PodSecurityPolicy](Azure.AKS.PodSecurityPolicy.md) | Configure AKS non-production clusters to use Pod Security Policies (Preview). | Important
[Azure.AKS.PoolScaleSet](Azure.AKS.PoolScaleSet.md) | Deploy AKS clusters with nodes pools based on VM scale sets. | Important
[Azure.AKS.PoolVersion](Azure.AKS.PoolVersion.md) | AKS node pools should match Kubernetes control plane version. | Important
[Azure.AKS.StandardLB](Azure.AKS.StandardLB.md) | Azure Kubernetes Clusters (AKS) should use a Standard load balancer SKU. | Important
[Azure.AKS.UseRBAC](Azure.AKS.UseRBAC.md) | Deploy AKS cluster with role-based access control (RBAC) enabled. | Important
[Azure.AKS.Version](Azure.AKS.Version.md) | AKS control plane and nodes pools should use a current stable release. | Important

### Container Registry

Name | Synopsis | Severity
---- | -------- | --------
[Azure.ACR.AdminUser](Azure.ACR.AdminUser.md) | Use Azure AD accounts instead of using the registry admin user. | Critical
[Azure.ACR.MinSku](Azure.ACR.MinSku.md) | ACR should use the Premium or Standard SKU for production deployments. | Important
[Azure.ACR.Name](Azure.ACR.Name.md) | Container registry names should meet naming requirements. | Awareness

### Content Delivery Network

Name | Synopsis | Severity
---- | -------- | --------
[Azure.CDN.HTTP](Azure.CDN.HTTP.md) | Enforce HTTPS for client connections. | Important

### Data Factory

Name | Synopsis | Severity
---- | -------- | --------
[Azure.DataFactory.Version](Azure.DataFactory.Version.md) | Consider migrating to DataFactory v2. | Awareness

### Firewall

Name | Synopsis | Severity
---- | -------- | --------
[Azure.Firewall.Mode](Azure.Firewall.Mode.md) | Deny high confidence malicious IP addresses and domains. | Critical

### Front Door

Name | Synopsis | Severity
---- | -------- | --------
[Azure.FrontDoor.Logs](Azure.FrontDoor.Logs.md) | Audit and monitor access through Front Door. | Important
[Azure.FrontDoor.MinTLS](Azure.FrontDoor.MinTLS.md) | Front Door should reject TLS versions older then 1.2. | Critical
[Azure.FrontDoor.Name](Azure.FrontDoor.Name.md) | Front Door names should meet naming requirements. | Awareness
[Azure.FrontDoor.State](Azure.FrontDoor.State.md) | Enable Azure Front Door instance. | Important
[Azure.FrontDoor.UseWAF](Azure.FrontDoor.UseWAF.md) | Enable Web Application Firewall (WAF) policies on each Front Door endpoint. | Critical
[Azure.FrontDoor.WAF.Enabled](Azure.FrontDoor.WAF.Enabled.md) | Front Door Web Application Firewall (WAF) policy must be enabled to protect back end resources. | Critical
[Azure.FrontDoor.WAF.Mode](Azure.FrontDoor.WAF.Mode.md) | Use protection mode in Front Door Web Application Firewall (WAF) policies to protect back end resources. | Critical

### Key Vault

Name | Synopsis | Severity
---- | -------- | --------
[Azure.KeyVault.AccessPolicy](Azure.KeyVault.AccessPolicy.md) | Use the principal of least privilege when assigning access to Key Vault. | Important
[Azure.KeyVault.Logs](Azure.KeyVault.Logs.md) | Audit and monitor access to Key Vault data. | Important
[Azure.KeyVault.PurgeProtect](Azure.KeyVault.PurgeProtect.md) | Enable Purge Protection on Key Vaults to prevent early purge of vaults and vault items. | Important
[Azure.KeyVault.SoftDelete](Azure.KeyVault.SoftDelete.md) | Enable Soft Delete on Key Vaults to protect vaults and vault items from accidental deletion. | Important

### Load Balancer

Name | Synopsis | Severity
---- | -------- | --------
[Azure.LB.Name](Azure.LB.Name.md) | Load Balancer names should meet naming requirements. | Awareness
[Azure.LB.Probe](Azure.LB.Probe.md) | Use a specific probe for web protocols. | Important

### Monitor

Name | Synopsis | Severity
---- | -------- | --------
[Azure.Monitor.ServiceHealth](Azure.Monitor.ServiceHealth.md) | Configure Service Health alerts to notify administrators. | Important

### Network Security Group

Name | Synopsis | Severity
---- | -------- | --------
[Azure.NSG.AnyInboundSource](Azure.NSG.AnyInboundSource.md) | Network security groups (NSGs) should avoid rules that allow any inbound source. | Critical
[Azure.NSG.Associated](Azure.NSG.Associated.md) | Network Security Groups (NSGs) should be associated. | Awareness
[Azure.NSG.DenyAllInbound](Azure.NSG.DenyAllInbound.md) | Avoid denying all inbound traffic. | Important
[Azure.NSG.LateralTraversal](Azure.NSG.LateralTraversal.md) | Deny outbound management connections from non-management hosts. | Important
[Azure.NSG.Name](Azure.NSG.Name.md) | Network Security Group (NSG) names should meet naming requirements. | Awareness

### Policy

Name | Synopsis | Severity
---- | -------- | --------
[Azure.Policy.Descriptors](Azure.Policy.Descriptors.md) | Policy and initiative definitions should use a display name, description and category. | Awareness

### Public IP address

Name | Synopsis | Severity
---- | -------- | --------
[Azure.PublicIP.DNSLabel](Azure.PublicIP.DNSLabel.md) | Public IP domain name labels should meet naming requirements. | Awareness
[Azure.PublicIP.IsAttached](Azure.PublicIP.IsAttached.md) | Public IP address should be attached. | Awareness
[Azure.PublicIP.Name](Azure.PublicIP.Name.md) | Public IP names should meet naming requirements. | Awareness

### Redis

Name | Synopsis | Severity
---- | -------- | --------
[Azure.Redis.MinTLS](Azure.Redis.MinTLS.md) | Redis Cache should reject TLS versions older then 1.2. | Critical
[Azure.Redis.NonSslPort](Azure.Redis.NonSslPort.md) | Redis Cache should only accept secure connections. | Critical

### Resource Group

Name | Synopsis | Severity
---- | -------- | --------
[Azure.ResourceGroup.Name](Azure.ResourceGroup.Name.md) | Resource Group names should meet naming requirements. | Awareness

### Route table

Name | Synopsis | Severity
---- | -------- | --------
[Azure.Route.Name](Azure.Route.Name.md) | Route table names should meet naming requirements. | Awareness

### Security Center

Name | Synopsis | Severity
---- | -------- | --------
[Azure.SecurityCenter.Contact](Azure.SecurityCenter.Contact.md) | Security Center email and phone contact details should be set. | Important
[Azure.SecurityCenter.Provisioning](Azure.SecurityCenter.Provisioning.md) | Enable auto-provisioning on to improve Azure Security Center insights. | Important

### SignalR Service

Name | Synopsis | Severity
---- | -------- | --------
[Azure.SignalR.Name](Azure.SignalR.Name.md) | SignalR service instance names should meet naming requirements. | Awareness

### SQL Database

Name | Synopsis | Severity
---- | -------- | --------
[Azure.SQL.AAD](Azure.SQL.AAD.md) | Use Azure Active Directory (AAD) authentication with Azure SQL databases. | Critical
[Azure.SQL.AllowAzureAccess](Azure.SQL.AllowAzureAccess.md) | Determine if access from Azure services is required. | Important
[Azure.SQL.Auditing](Azure.SQL.Auditing.md) | Enable auditing for Azure SQL logical server. | Important
[Azure.SQL.FirewallIPRange](Azure.SQL.FirewallIPRange.md) | Determine if there is an excessive number of permitted IP addresses. | Important
[Azure.SQL.FirewallRuleCount](Azure.SQL.FirewallRuleCount.md) | Determine if there is an excessive number of firewall rules. | Awareness
[Azure.SQL.TDE](Azure.SQL.TDE.md) | Use Transparent Data Encryption (TDE) with Azure SQL Database. | Critical
[Azure.SQL.ThreatDetection](Azure.SQL.ThreatDetection.md) | Enable Advanced Thread Protection for Azure SQL logical server. | Important

### Storage

Name | Synopsis | Severity
---- | -------- | --------
[Azure.Storage.BlobAccessType](Azure.Storage.BlobAccessType.md) | Storage Accounts use containers configured with an access type other than Private. | Important

### Storage Account

Name | Synopsis | Severity
---- | -------- | --------
[Azure.Storage.Name](Azure.Storage.Name.md) | Storage Account names should meet naming requirements. | Awareness
[Azure.Storage.SecureTransfer](Azure.Storage.SecureTransfer.md) | Storage accounts should only accept encrypted connections. | Important
[Azure.Storage.SoftDelete](Azure.Storage.SoftDelete.md) | Enable soft delete on Storage Accounts. | Important
[Azure.Storage.UseEncryption](Azure.Storage.UseEncryption.md) | Storage Service Encryption (SSE) should be enabled. | Important
[Azure.Storage.UseReplication](Azure.Storage.UseReplication.md) | Storage accounts not using geo-replicated storage (GRS) may be at risk. | Single point of failure

### Subscription

Name | Synopsis | Severity
---- | -------- | --------
[Azure.RBAC.CoAdministrator](Azure.RBAC.CoAdministrator.md) | Delegate access to manage Azure resources using role-based access control (RBAC). | Important
[Azure.RBAC.LimitMGDelegation](Azure.RBAC.LimitMGDelegation.md) | Limit Role-Base Access Control (RBAC) inheritance from Management Groups. | Important
[Azure.RBAC.LimitOwner](Azure.RBAC.LimitOwner.md) | Limit the number of subscription Owners. | Important
[Azure.RBAC.PIM](Azure.RBAC.PIM.md) | Use just-in-time (JiT) activation of roles instead of persistent role assignment. | Important
[Azure.RBAC.UseGroups](Azure.RBAC.UseGroups.md) | Use groups for assigning permissions instead of individual user accounts. | Important
[Azure.RBAC.UseRGDelegation](Azure.RBAC.UseRGDelegation.md) | Use RBAC assignments on resource groups instead of individual resources. | Important

### Traffic Manager

Name | Synopsis | Severity
---- | -------- | --------
[Azure.TrafficManager.Endpoints](Azure.TrafficManager.Endpoints.md) | Traffic Manager should use at lest two enabled endpoints. | Single point of failure
[Azure.TrafficManager.Protocol](Azure.TrafficManager.Protocol.md) | Monitor Traffic Manager web-based endpoints with HTTPS. | Important

### Virtual Machine

Name | Synopsis | Severity
---- | -------- | --------
[Azure.VM.AcceleratedNetworking](Azure.VM.AcceleratedNetworking.md) | Use accelerated networking for supported operating systems and VM types. | Important
[Azure.VM.ADE](Azure.VM.ADE.md) | Use Azure Disk Encryption (ADE). | Important
[Azure.VM.Agent](Azure.VM.Agent.md) | Ensure the VM agent is provisioned automatically. | Important
[Azure.VM.ASAlignment](Azure.VM.ASAlignment.md) | Availability sets should be aligned. | Single point of failure
[Azure.VM.ASMinMembers](Azure.VM.ASMinMembers.md) | Availability sets should be deployed with at least two members. | Single point of failure
[Azure.VM.ASName](Azure.VM.ASName.md) | Availability Set names should meet naming requirements. | Awareness
[Azure.VM.BasicSku](Azure.VM.BasicSku.md) | Virtual machines (VMs) should not use Basic sizes. | Important
[Azure.VM.ComputerName](Azure.VM.ComputerName.md) | Virtual Machine (VM) computer name should meet naming requirements. | Awareness
[Azure.VM.DiskAttached](Azure.VM.DiskAttached.md) | Managed disks should be attached to virtual machines. | Awareness
[Azure.VM.DiskCaching](Azure.VM.DiskCaching.md) | Check disk caching is configured correctly for the workload. | Important
[Azure.VM.DiskName](Azure.VM.DiskName.md) | Managed Disk names should meet naming requirements. | Awareness
[Azure.VM.DiskSizeAlignment](Azure.VM.DiskSizeAlignment.md) | Managed disk is smaller than SKU size. | Awareness
[Azure.VM.Name](Azure.VM.Name.md) | Virtual Machine (VM) names should meet naming requirements. | Awareness
[Azure.VM.NICAttached](Azure.VM.NICAttached.md) | Network interfaces (NICs) should be attached. | Awareness
[Azure.VM.NICName](Azure.VM.NICName.md) | Network Interface (NIC) names should meet naming requirements. | Awareness
[Azure.VM.PPGName](Azure.VM.PPGName.md) | Proximity Placement Group (PPG) names should meet naming requirements. | Awareness
[Azure.VM.PromoSku](Azure.VM.PromoSku.md) | Virtual machines (VMs) should not use expired promotional SKU. | Awareness
[Azure.VM.PublicKey](Azure.VM.PublicKey.md) | Linux virtual machines should use public keys. | Important
[Azure.VM.Standalone](Azure.VM.Standalone.md) | VMs must use premium disks or use availability sets/ zones to meet SLA requirements. | Single point of failure
[Azure.VM.UniqueDns](Azure.VM.UniqueDns.md) | Network interfaces (NICs) should inherit DNS from virtual networks. | Awareness
[Azure.VM.Updates](Azure.VM.Updates.md) | Ensure automatic updates are enabled at deployment. | Important
[Azure.VM.UseHybridUseBenefit](Azure.VM.UseHybridUseBenefit.md) | Use Hybrid Use Benefit (HUB) for applicable virtual machine (VM) workloads. | Awareness
[Azure.VM.UseManagedDisks](Azure.VM.UseManagedDisks.md) | Virtual machines (VMs) should use managed disks. | Single point of failure

### Virtual Machine Scale Sets

Name | Synopsis | Severity
---- | -------- | --------
[Azure.VMSS.ComputerName](Azure.VMSS.ComputerName.md) | Virtual Machine Scale Set (VMSS) computer name should meet naming requirements. | Awareness
[Azure.VMSS.Name](Azure.VMSS.Name.md) | Virtual Machine Scale Set (VMSS) names should meet naming requirements. | Awareness

### Virtual Network

Name | Synopsis | Severity
---- | -------- | --------
[Azure.VNET.LocalDNS](Azure.VNET.LocalDNS.md) | Virtual networks (VNETs) should use Azure local DNS servers. | Important
[Azure.VNET.Name](Azure.VNET.Name.md) | Virtual Network (VNET) names should meet naming requirements. | Awareness
[Azure.VNET.PeerState](Azure.VNET.PeerState.md) | VNET peering connections must be connected. | Important
[Azure.VNET.SingleDNS](Azure.VNET.SingleDNS.md) | VNETs should have at least two DNS servers assigned. | Single point of failure
[Azure.VNET.SubnetName](Azure.VNET.SubnetName.md) | Subnet names should meet naming requirements. | Awareness
[Azure.VNET.UseNSGs](Azure.VNET.UseNSGs.md) | Subnets should have NSGs assigned. | Critical

### Virtual Network Gateway

Name | Synopsis | Severity
---- | -------- | --------
[Azure.VNG.ConnectionName](Azure.VNG.ConnectionName.md) | Virtual Network Gateway (VNG) connection names should meet naming requirements. | Awareness
[Azure.VNG.ERLegacySKU](Azure.VNG.ERLegacySKU.md) | Migrate from legacy SKUs to improve reliability and performance of ExpressRoute (ER) gateways. | Important
[Azure.VNG.Name](Azure.VNG.Name.md) | Virtual Network Gateway (VNG) names should meet naming requirements. | Awareness
[Azure.VNG.VPNActiveActive](Azure.VNG.VPNActiveActive.md) | Use VPN gateways configured to operate in an Active-Active configuration to reduce connectivity downtime. | Important
[Azure.VNG.VPNLegacySKU](Azure.VNG.VPNLegacySKU.md) | Migrate from legacy SKUs to improve reliability and performance of VPN gateways. | Important
