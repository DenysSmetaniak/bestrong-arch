terraform {
  backend "azurerm" {
    resource_group_name  = "bestrong_storage"
    storage_account_name = "bestrongfiles"
    container_name       = "terraform-state"
    key                  = "terraform.tfstate"
    use_oidc             = true
  }
}
