output "key_vault_id" {
  description = "The ID of the Key Vault"
  value       = azurerm_key_vault.bestrong_kv.id
}

output "key_vault_uri" {
  description = "The URI of the Key Vault"
  value       = azurerm_key_vault.bestrong_kv.vault_uri
}
