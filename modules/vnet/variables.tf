variable "vnet_name" {
  description = "Name of the Virtual Network"
  type        = string
  default     = "bestrong-vnet"
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

