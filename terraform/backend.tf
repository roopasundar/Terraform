terraform {
  backend "azurerm" {
    resource_group_name   = "terraform-rg"
    storage_account_name  = "teststorageaccount123yuu"
    container_name        = "github-container"
    key                   = "terraform.tfstate"
  }
}
