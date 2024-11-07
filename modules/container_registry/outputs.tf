output "container_registry_id" {
  description = "The ID of the Azure Container Registry"
  value       = azurerm_container_registry.container_registry.id
}

output "container_registry_login_server" {
  description = "The login server of the Azure Container Registry"
  value       = azurerm_container_registry.container_registry.login_server
}
