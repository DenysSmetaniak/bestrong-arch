variable "storage_account_name" {
  description = "Name of the Storage Account"
  type        = string
  default     = "bestrongstorageacct"
}

variable "fileshare_name" {
  description = "Name of the File Share"
  type        = string
  default     = "bestrongfileshare"
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

