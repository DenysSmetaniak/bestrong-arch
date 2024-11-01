variable "app_service_plan_name" {
  description = "Name of the App Service Plan"
  type        = string
  default     = "bestrong-app-service-plan"
}

variable "app_service_name" {
  description = "Name of the App Service"
  type        = string
  default     = "bestrong-app-service"
}

variable "vnet_integration_subnet_id" {
  description = "ID of the subnet for VNet integration"
  type        = string
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

