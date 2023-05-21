terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.57.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "XXXXX"
  tenant_id = "XXXXX"
  client_id = "XXXXX"
  client_secret = "XXXXX"
  features {}
}
