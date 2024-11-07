output "storage_account_id" {
  description = "The ID of the Storage Account"
  value       = azurerm_storage_account.bestrong_sa.id
}

output "storage_account_name" {
  description = "The name of the Storage Account"
  value       = azurerm_storage_account.bestrong_sa.name
}

output "storage_account_primary_access_key" {
  description = "The primary access key of the Storage Account"
  value       = azurerm_storage_account.bestrong_sa.primary_access_key
}

output "storage_share_id" {
  description = "The ID of the Storage Share"
  value       = azurerm_storage_share.bestrong_fs.id
}

output "private_endpoint_id" {
  description = "The ID of the Private Endpoint for the Storage Account"
  value       = azurerm_private_endpoint.bestrong_pe.id
}
