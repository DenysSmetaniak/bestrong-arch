variable "bestrong_rg_name" {
  description = "The name of the resource group"
  type        = string
}

variable "bestrong_rg_location" {
  description = "The location of the resources"
  type        = string
}

variable "bestrong_storage_fs_size_gb" {
  description = "The quota size in GB for the Azure Storage file share"
  type        = number
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

variable "bestrong_mssql_size_gb" {
  description = "The max storage size in GB for the MSSQL database"
  type        = number
}

variable "bestorng_mssql_cpu_max" {
  description = "The SKU name defining the maximum number of vCores for the MSSQL server"
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
