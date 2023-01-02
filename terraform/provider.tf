# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  tenant_id       = "22ad6234-f4cf-4c72-9f49-b356361cdc98"
  client_id       = "0e87c959-384f-444b-9b10-f449ab0b7527"
  client_secret   = "1qY8Q~eQHL3wOetL4nrfPLpCNn_Y2XYq3trIWcay"
  subscription_id = "c11b0c54-2253-48f4-9b84-75b78e34d66b"
}

resource "azurerm_resource_group" "myrg" {
    name = "my_test"
    location = "East US" 
}
resource "azurerm_resource_group" "myrg1" {
    name = "my_test1"
    location = "East US2" 
}