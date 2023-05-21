terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.57.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "e3ee3ee2-119e-453a-a958-b8e385c680e0"
  tenant_id = "4238699a-f505-4d45-8c2c-121606c75ffd"
  client_id = "2d2e1929-6f85-4c8a-802e-2f619d741d2f"
  client_secret = var.client_secret
  features {}
}