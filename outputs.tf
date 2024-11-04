// Outputs for Resource Group
output "resource_group_id" {
  description = "The ID of the Resource Group"
  value       = azurerm_resource_group.bestrong_rg.id
}

output "resource_group_location" {
  description = "The location of the Resource Group"
  value       = azurerm_resource_group.bestrong_rg.location
}

// Outputs for App Service
output "app_service_id" {
  description = "The ID of the App Service"
  value       = module.app_service.app_service_id
}

output "app_service_identity_principal_id" {
  description = "The principal ID of the App Service"
  value       = module.app_service.app_service_identity_principal_id
}

// Outputs for Application Insights
output "app_insights_id" {
  description = "The ID of the Application Insights resource"
  value       = module.app_insights.app_insights_id
}

// Outputs for Container Registry
output "container_registry_id" {
  description = "The ID of the Container Registry"
  value       = module.container_registry.container_registry_id
}

output "container_registry_login_server" {
  description = "The login server of the Container Registry"
  value       = module.container_registry.container_registry_login_server
}

// Outputs for MSSQL Server & Database
output "mssql_server_id" {
  description = "The ID of the MSSQL Server"
  value       = module.mssql.mssql_server_id
}

output "mssql_database_id" {
  description = "The ID of the MSSQL Database"
  value       = module.mssql.mssql_database_id
}

output "private_endpoint_id" {
  description = "The ID of the Private Endpoint for the MSSQL Server"
  value       = module.mssql.private_endpoint_id
}

// Outputs for Storage Account
output "storage_account_id" {
  description = "The ID of the Storage Account"
  value       = module.storage_account.storage_account_id
}

output "storage_account_name" {
  description = "The name of the Storage Account"
  value       = module.storage_account.storage_account_name
}

output "storage_share_id" {
  description = "The ID of the Storage Share"
  value       = module.storage_account.storage_share_id
}

// Outputs for Key Vault
output "key_vault_id" {
  description = "The ID of the Key Vault"
  value       = module.key_vault.key_vault_id
}

output "key_vault_uri" {
  description = "The URI of the Key Vault"
  value       = module.key_vault.key_vault_uri
}

// Outputs for Virtual Network
output "vnet_id" {
  description = "The ID of the Virtual Network"
  value       = module.vnet.vnet_id
}

output "app_subnet_id" {
  description = "The ID of the App Subnet in the Virtual Network"
  value       = module.vnet.app_subnet_id
}

output "private_endpoint_subnet_id" {
  description = "The ID of the Private Endpoint Subnet in the Virtual Network"
  value       = module.vnet.private_endpoint_subnet_id
}
