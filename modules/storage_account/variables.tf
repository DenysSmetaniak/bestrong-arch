//////////////////////// Storage Account /////////////////////

variable "bestrong_sa_name" {
  description = "The name of the Azure Storage Account"
  type        = string
  default     = "bestrongsa"
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

//////////////////////// Storage Share //////////////////////

variable "bestrong_fs_name" {
  description = "The name of the Azure Storage file share"
  type        = string
  default     = "bestrong-fs"
}

variable "bestrong_storage_fs_size_gb" {
  description = "The quota size in GB for the Azure Storage file share"
  type        = number
}

////////////////////// Private Endpoint /////////////////////

variable "bestrong_pe_name" {
  description = "The name of the private endpoint for the Storage Account"
  type        = string
  default     = "bestrong-pe"
}

# variable "bestrong_private_es" {
#   description = "The ID of the subnet for the private endpoint"
#   type        = string
# }

variable "bestrong_storage_private_link" {
  description = "The name of the private link connection for the Storage Account"
  type        = string
  default     = "bestrong-storage-private-link"
}

variable "subnet_id" {
  description = "The ID of the subnet for the private endpoint in the storage account"
  type        = string
}

