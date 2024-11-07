variable "app_insights_name" {
  description = "The name of the Application Insights resource"
  type        = string
  default     = "bestrong-app-insights"
}

variable "location" {
  description = "The location for Application Insights"
  type        = string
  default     = "UK South"
}

variable "resource_group_name" {
  description = "The name of the resource group for Application Insights"
  type        = string
}

variable "application_type" {
  description = "The type of Application Insights resource"
  type        = string
  default     = "web"
}

