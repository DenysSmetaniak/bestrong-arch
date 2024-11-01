variable "key_vault_name" {
  description = "Name of the Key Vault"
  type        = string
  default     = "bestrong-kv22"
}

variable "location" {
  description = "Location for the resources"
  type        = string
  default     = "polandcentral"
}

variable "resource_group_name" {
  description = "Resource group name for the resources"
  type        = string
  default     = "bestrong-rg"
}

variable "vnet_integration_subnet_id" {
  description = "ID of the subnet for VNet integration"
  type        = string
}

variable "app_service_principal_id" {
  description = "Principal ID for App Service Managed Identity"
  type        = string
}


