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


variable "location" {
  description = "Location for the resources"
  type        = string
  default     = "northeurope"
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

