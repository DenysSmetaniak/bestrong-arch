output "vnet_id" {
  value       = azurerm_virtual_network.vnet.id
  description = "ID of the Virtual Network"
}

output "subnet_id" {
  value       = azurerm_subnet.subnet.id
  description = "ID of the Subnet within the VNet"
}
