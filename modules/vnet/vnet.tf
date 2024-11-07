resource "azurerm_virtual_network" "bestrong_vnet" {
  name                = var.bestrong_vnet_name
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = ["10.0.0.0/16"]
}

resource "azurerm_subnet" "bestrong_subnet" {
  name                 = var.bestrong_subnet_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.bestrong_vnet.name
  address_prefixes     = ["10.0.1.0/24"]

  service_endpoints = ["Microsoft.KeyVault"]

  delegation {
    name = var.bestrong_app_delegation

    service_delegation {
      name = "Microsoft.Web/serverFarms"
      actions = [
        "Microsoft.Network/virtualNetworks/subnets/action"
      ]
    }
  }
}

resource "azurerm_subnet" "bestrong_private_es" {
  name                 = var.bestrong_private_es_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.bestrong_vnet.name
  address_prefixes     = ["10.0.2.0/24"]
}
