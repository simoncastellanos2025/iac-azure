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
  skip_provider_registration = true  # Add this line
}

resource "azurerm_resource_group" "rg_example" {
  name     = "rg-terraform-workshop"
  location = "eastus"
}
