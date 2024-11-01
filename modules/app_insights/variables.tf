variable "app_insights_name" {
  description = "Name of the Application Insights instance"
  type        = string
  default     = "bestrong-app-insights"
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

