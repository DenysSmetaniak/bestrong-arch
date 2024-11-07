variable "app_service_plan_name" {
  description = "The name of the App Service Plan"
  type        = string
  default     = "bestrong-service-plan"
}

variable "location" {
  description = "The location for all resources"
  type        = string
  default     = "UK South"
}

variable "app_service_name" {
  description = "The name of the App Service"
  type        = string
  default     = "bestrong-app-service-plan"
}

variable "storage_account_share_name" {
  description = "The name of the Azure Files share"
  type        = string
  default     = "bestrongshare"
}

variable "storage_mount_path" {
  description = "The mount path for the Azure Files share in the App Service"
  type        = string
  default     = "/mnt/fileshare"
}

variable "app_service_plan_sku" {
  description = "The SKU name for the App Service Plan"
  type        = string
  default     = "B1"
}

variable "app_service_plan_os" {
  description = "The OS type for the App Service"
  default     = "Linux"
}

variable "storage_share_dependency" {
  description = "Dependency on the storage share resource"
  type        = any
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "storage_account_name" {
  description = "The name of the storage account"
  type        = string
}

variable "virtual_network_subnet_id" {
  description = "The ID of the virtual network subnet"
  type        = string
}

variable "storage_account_access_key" {
  description = "The access key for the storage account"
  type        = string
}

