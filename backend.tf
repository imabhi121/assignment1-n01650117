terraform {
  backend "azurerm" {
    resource_group_name  = "tfstaten01650117RG"
    storage_account_name = "tfstatenn01650117sa"
    container_name       = "tfstatefiles"
    key                  = "terraform.tfstate"
  }
}
