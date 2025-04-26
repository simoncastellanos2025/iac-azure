terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"  # or your preferred version
    }
  }
}

# main.tf
provider "azurerm" {
  features {}
   subscription_id = "your-subscription-id"
  client_id       = "your-client-id"
  client_secret   = "your-client-secret"
  tenant_id       = "your-tenant-id"
  #skip_provider_registration = true  # Add this line
}

resource "azurerm_resource_group" "rg_example" {
  name     = "rg-terraform-workshop"
  location = "eastus"
}
