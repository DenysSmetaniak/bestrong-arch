terraform {
  required_version = ">=1.3.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.0.0"
    }
  }

  #   backend "azurerm" {
  #     resource_group_name  = "bestrong-backend-rg"
  #     storage_account_name = "bestrongtfstate"
  #     container_name       = "tfstate"
  #     key                  = "terraform.tfstate"
  #   }
  backend "local" {
    path = "terraform.tfstate"
  }
}


provider "azurerm" {
  features {}
}


resource "azurerm_resource_group" "main_rg" {
  name     = "bestrong-rg"
  location = "polandcentral"
}

resource "azurerm_resource_group" "backend_rg" {
  name     = "bestrong-backend-rg"
  location = "polandcentral"
}

resource "azurerm_storage_account" "backend_storage" {
  name                     = "bestrongtfstate22"
  resource_group_name      = azurerm_resource_group.backend_rg.name
  location                 = azurerm_resource_group.backend_rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "backend_container" {
  name                  = "tfstate"
  storage_account_name  = azurerm_storage_account.backend_storage.name
  container_access_type = "private"
}


module "vnet" {
  source              = "./modules/vnet"
  vnet_name           = var.vnet_name
  location            = azurerm_resource_group.main_rg.location
  resource_group_name = azurerm_resource_group.main_rg.name
  depends_on          = [azurerm_resource_group.main_rg]
}

module "app_service" {
  source                     = "./modules/app_service"
  app_service_plan_name      = var.app_service_plan_name
  app_service_name           = var.app_service_name
  vnet_integration_subnet_id = module.vnet.subnet_id
  location                   = azurerm_resource_group.main_rg.location
  resource_group_name        = azurerm_resource_group.main_rg.name
  depends_on                 = [azurerm_resource_group.main_rg]
}

module "app_insights" {
  source              = "./modules/app_insights"
  app_insights_name   = var.app_insights_name
  location            = azurerm_resource_group.main_rg.location
  resource_group_name = azurerm_resource_group.main_rg.name
  depends_on          = [azurerm_resource_group.main_rg]
}

module "acr" {
  source              = "./modules/acr"
  acr_name            = "bestrongacrunique12345"
  location            = azurerm_resource_group.main_rg.location
  resource_group_name = azurerm_resource_group.main_rg.name
  depends_on          = [azurerm_resource_group.main_rg]
}


module "key_vault" {
  source                     = "./modules/key_vault"
  key_vault_name             = var.key_vault_name
  vnet_integration_subnet_id = module.vnet.subnet_id
  location                   = azurerm_resource_group.main_rg.location
  resource_group_name        = azurerm_resource_group.main_rg.name
  app_service_principal_id   = module.app_service.principal_id
  depends_on                 = [azurerm_resource_group.main_rg]
}

module "mssql" {
  source                     = "./modules/mssql"
  sql_server_name            = var.sql_server_name
  database_name              = var.database_name
  admin_login                = var.admin_login
  admin_password             = var.admin_password
  location                   = azurerm_resource_group.main_rg.location
  resource_group_name        = azurerm_resource_group.main_rg.name
  vnet_integration_subnet_id = module.vnet.subnet_id
  depends_on                 = [azurerm_resource_group.main_rg]
}

module "storage_account" {
  source                     = "./modules/storage_account"
  storage_account_name       = "bestrongstore12345"
  fileshare_name             = var.fileshare_name
  location                   = azurerm_resource_group.main_rg.location
  resource_group_name        = azurerm_resource_group.main_rg.name
  vnet_integration_subnet_id = module.vnet.subnet_id
  depends_on                 = [azurerm_resource_group.main_rg]
}

