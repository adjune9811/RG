resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location
}

terraform {
  backend "azurerm" {
    resource_group_name  = "terraform-storage-rg"
    storage_account_name = "addsterraformstate201"
    container_name       = "tfstatefiles"
    key                  = "terraform.tfstate"
  }
}
