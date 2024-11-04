resource "azurerm_container_registry" "container_registry" {
  name                = var.container_registry_name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = var.container_registry_sku
  admin_enabled       = false
}

resource "azurerm_role_assignment" "acr_role_assignment" {
  # principal_id         = module.app_service.app_service_identity_principal_id
  principal_id         = var.principal_id
  role_definition_name = var.role_definition_name
  scope                = azurerm_container_registry.container_registry.id
}
