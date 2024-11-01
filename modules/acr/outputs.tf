output "acr_login_server" {
  value       = azurerm_container_registry.acr.login_server
  description = "Login server URL for the ACR"
}
