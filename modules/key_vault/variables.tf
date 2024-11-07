variable "key_vault_name" {
  description = "The name of the Key Vault"
  type        = string
  default     = "bestrong-key-vault-bstg"
}

variable "location" {
  description = "The location of the resources"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "delete_retention" {
  description = "The number of days to retain soft-deleted resources in the Key Vault"
  type        = number
  default     = 10
}

variable "app_service_identity_principal_id" {
  description = "The principal ID of the App Service for Key Vault access policy"
  type        = string
}

variable "subnet_id" {
  description = "The ID of the subnet for Key Vault network ACLs"
  type        = string
}


