output "key_vault_uri" {
  value       = azurerm_key_vault.key_vault.vault_uri
  description = "URI of the Key Vault"
}
