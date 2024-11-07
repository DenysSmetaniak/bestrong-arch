//////////////////////// MSSQL Server /////////////////////

variable "bestrong_mssql_srv_name" {
  description = "The name of the MSSQL server instance"
  type        = string
  default     = "bestrong-mssql-srv"
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

variable "bestrong_mssql_srv_version" {
  description = "The version of the MSSQL server"
  type        = string
  default     = "12.0"
}

variable "bestrong_mssql_login" {
  description = "The admin login name for the MSSQL server"
  type        = string
  sensitive   = true
}

variable "bestrong_mssql_password" {
  description = "The admin password for the MSSQL server"
  type        = string
  sensitive   = true
}

/////////////////////// MSSQL DataBases ////////////////////

variable "bestrong_mssql_db_name" {
  description = "The name of the MSSQL database"
  type        = string
  default     = "bestrong-mssql-db"
}

variable "bestrong_mssql_size_gb" {
  description = "The maximum storage size in GB for the MSSQL database"
  type        = number
}

variable "bestorng_mssql_cpu_max" {
  description = "The maximum vCore size for the MSSQL server SKU"
  type        = string
}

variable "bestrong_mssql_cpu_min" {
  description = "The minimum number of vCores allocated to the MSSQL server"
  type        = number
}

variable "bestrong_mssql_cpu_pause_delay" {
  description = "The auto-pause delay in minutes for the MSSQL server when no activity is detected"
  type        = number
}

/////////////////// MSSQL Private Endpoint /////////////////

variable "bestrong_mssql_pe_name" {
  description = "The name of the private endpoint for the MSSQL server"
  type        = string
  default     = "mssql-private-link"
}

variable "private_service_connection" {
  description = "The name of the private service connection for the MSSQL server's private endpoint"
  type        = string
  default     = "mssql-private-link"
}

variable "subnet_id" {
  description = "The ID of the subnet for the private endpoint"
  type        = string
}

