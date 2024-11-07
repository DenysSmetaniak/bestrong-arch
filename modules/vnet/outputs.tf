output "vnet_id" {
  description = "The ID of the Virtual Network"
  value       = azurerm_virtual_network.bestrong_vnet.id
}

output "app_subnet_id" {
  description = "The ID of the app subnet in the Virtual Network"
  value       = azurerm_subnet.bestrong_subnet.id
}

output "private_endpoint_subnet_id" {
  description = "The ID of the private endpoint subnet in the Virtual Network"
  value       = azurerm_subnet.bestrong_private_es.id
}
