terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.7.0"
    }
  }

  required_version = "1.9.8"
}

############################# Provider ##########################

provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy    = false
      recover_soft_deleted_key_vaults = true
    }
  }

  resource_provider_registrations = "core"
  use_oidc                        = true
}

########################## Resource Group ########################

resource "azurerm_resource_group" "bestrong_rg" {
  name     = var.bestrong_rg_name
  location = var.bestrong_rg_location
}

////////////////////////////// Modules ////////////////////////////

############################ App Service #########################

module "app_service" {
  source = "./modules/app_service"

  resource_group_name        = azurerm_resource_group.bestrong_rg.name
  virtual_network_subnet_id  = module.vnet.app_subnet_id
  storage_account_name       = module.storage_account.storage_account_name
  storage_account_access_key = module.storage_account.storage_account_primary_access_key
  storage_share_dependency   = module.storage_account.storage_share_id
}

############################ App Insights #########################

module "app_insights" {
  source = "./modules/app_insights"

  resource_group_name = azurerm_resource_group.bestrong_rg.name
  location            = azurerm_resource_group.bestrong_rg.location
  # app_insights_name   = "bestrong-app-insights"
  # application_type    = "web"
}

######################## Container Registry #######################

module "container_registry" {
  source = "./modules/container_registry"

  resource_group_name = azurerm_resource_group.bestrong_rg.name
  location            = azurerm_resource_group.bestrong_rg.location
  principal_id        = module.app_service.app_service_identity_principal_id
}

##################### MSSQL Server & DataBAses ####################

module "mssql" {
  source = "./modules/mssql"

  resource_group_name            = azurerm_resource_group.bestrong_rg.name
  location                       = azurerm_resource_group.bestrong_rg.location
  subnet_id                      = module.vnet.private_endpoint_subnet_id
  bestrong_mssql_login           = var.bestrong_mssql_login
  bestrong_mssql_password        = var.bestrong_mssql_password
  bestrong_mssql_size_gb         = 2
  bestorng_mssql_cpu_max         = "S0"
  bestrong_mssql_cpu_min         = 1
  bestrong_mssql_cpu_pause_delay = 50
}

######################### Storage Account ########################

module "storage_account" {
  source = "./modules/storage_account"

  resource_group_name         = azurerm_resource_group.bestrong_rg.name
  location                    = azurerm_resource_group.bestrong_rg.location
  bestrong_storage_fs_size_gb = 2
  subnet_id                   = module.vnet.private_endpoint_subnet_id
}

######################### Key Vault ########################

module "key_vault" {
  source = "./modules/key_vault"

  resource_group_name               = azurerm_resource_group.bestrong_rg.name
  location                          = azurerm_resource_group.bestrong_rg.location
  app_service_identity_principal_id = module.app_service.app_service_identity_principal_id
  subnet_id                         = module.vnet.app_subnet_id
}

#################### Virtual Network  ####################

module "vnet" {
  source = "./modules/vnet"

  resource_group_name = azurerm_resource_group.bestrong_rg.name
  location            = azurerm_resource_group.bestrong_rg.location
}
