output "storage_account_id" {
  value       = azurerm_storage_account.storage_account.id
  description = "ID of the Storage Account"
}

output "storage_account_primary_connection_string" {
  value       = azurerm_storage_account.storage_account.primary_connection_string
  description = "Primary connection string for the Storage Account"
  sensitive   = true
}


output "fileshare_name" {
  value       = azurerm_storage_share.fileshare.name
  description = "Name of the File Share"
}

output "storage_private_endpoint_id" {
  value       = azurerm_private_endpoint.storage_private_endpoint.id
  description = "ID of the Storage Account Private Endpoint"
}
