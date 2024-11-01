Write Terraform code for configuration of the following bunch of resources:

App Service Plan
App Service - integrate with VNet, enable System Managed Identity
Application Insights - linked to App Service
ACR - Azure Container Registry, grant App Service Identity access to it
Key Vault - grant permissions to App Service Identity, integrate with VNet
VNet
MS SQL Server DB - Private Endpoint needs to be configured
Storage account - configure Private Endpoint with VNET and mount Fileshare to App Service
Storage account for Terraform state