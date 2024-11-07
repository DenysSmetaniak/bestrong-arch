variable "bestrong_vnet_name" {
  description = "The name of the Virtual Network"
  type        = string
  default     = "bestrong-vnet"
}

variable "location" {
  description = "The location for all resources"
  type        = string
  default     = "UK South"
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "bestrong_subnet_name" {
  description = "The name of the app subnet"
  type        = string
  default     = "bestrong-app-subnet"
}

variable "bestrong_app_delegation" {
  description = "The name of the app delegation"
  type        = string
  default     = "bestrong-app-delegation"
}

variable "bestrong_private_es_name" {
  description = "The name of the private endpoint subnet"
  type        = string
  default     = "bestrong-private-es"
}

