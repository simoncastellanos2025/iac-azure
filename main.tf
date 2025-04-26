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
  subscription_id = "c5941903-69ad-4ba1-b201-6f86d9a24226"
  client_id       = "03122896-ae63-471a-a602-2aabf042a881"
  #client_secret   = "your-client-secret"
  tenant_id       = "ac5b3248-01a9-4eb0-bdf4-e89223653965"
  #skip_provider_registration = true  # Add this line
}

resource "azurerm_resource_group" "rg_example" {
  name     = "rg-terraform-workshop"
  location = "eastus"
}
