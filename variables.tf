variable "location" {
  description = "Azure location for resources"
  type        = string
  default     = "polandcentral"
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "bestrong-rg"
}

variable "backend_resource_group_name" {
  description = "Resource group for the Terraform backend"
  type        = string
}

variable "backend_storage_account_name" {
  description = "Storage account name for the Terraform backend"
  type        = string
}

variable "backend_container_name" {
  description = "Container name for the Terraform backend"
  type        = string
  default     = "tfstate"
}

# App Service Variables
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

# Application Insights Variables
variable "app_insights_name" {
  description = "Name of the Application Insights instance"
  type        = string
  default     = "bestrong-app-insights"
}

# ACR Variables
variable "acr_name" {
  description = "Name of the Azure Container Registry"
  type        = string
  default     = "bestrongacr"
}

# Key Vault Variables
variable "key_vault_name" {
  description = "Name of the Key Vault"
  type        = string
  default     = "bestrong-kv22"
}

# VNet Variables
variable "vnet_name" {
  description = "Name of the Virtual Network"
  type        = string
  default     = "bestrong-vnet"
}

# MS SQL Server Variables
variable "sql_server_name" {
  description = "Name of the SQL Server"
  type        = string
  default     = "bestrong-sql-server"
}

variable "database_name" {
  description = "Name of the SQL Database"
  type        = string
  default     = "bestrongdb"
}

variable "admin_login" {
  description = "Admin login for SQL Server"
  type        = string
  sensitive   = true
}

variable "admin_password" {
  description = "Admin password for SQL Server"
  type        = string
  sensitive   = true
}

# Storage Account Variables
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
