variable "container_registry_name" {
  description = "The name of the Azure Container Registry"
  type        = string
  default     = "bestrongcr"
}

variable "location" {
  description = "The location for the Azure Container Registry"
  type        = string
  default     = "UK South"
}

variable "resource_group_name" {
  description = "The resource group name for the Azure Container Registry"
  type        = string
}

variable "role_definition_name" {
  description = "The role definition name for assigning permissions to the container registry"
  type        = string
  default     = "AcrPull"
}

variable "principal_id" {
  description = "The principal ID to which the role will be assigned"
  type        = string
}

variable "container_registry_sku" {
  description = "The sku of container registry"
  type        = string
  default     = "Basic"
}


