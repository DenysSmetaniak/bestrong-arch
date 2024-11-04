data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "bestrong_kv" {
  name                        = var.key_vault_name
  location                    = var.location
  resource_group_name         = var.resource_group_name
  enabled_for_disk_encryption = false
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = var.delete_retention
  purge_protection_enabled    = false
  sku_name                    = "standard"

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = var.app_service_identity_principal_id
    # object_id = azurerm_linux_web_app.bestrong_app_sp.identity[0].principal_id
    # object_id = module.app_service.app_service_identity_principal_id

    key_permissions     = ["Get", "List", ]
    secret_permissions  = ["Get", "List", ]
    storage_permissions = ["Get", "List", ]

  }

  network_acls {
    default_action = "Deny"
    bypass         = "None"

    virtual_network_subnet_ids = [
      var.subnet_id,
    ]
  }
}
