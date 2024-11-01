variable "acr_name" {
  description = "Name of the Azure Container Registry"
  type        = string
  default     = "bestrongacr"
}

variable "location" {
  description = "Location for the resources"
  type        = string
  default     = "polandcentral"
}

variable "resource_group_name" {
  description = "Name of the resource group for the Azure Container Registry"
  type        = string
}


