terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.0.1"
    }
  }
}

provider "azurerm"{
  # Configuration options
  subscription_id = "68822ef6-c7c9-4c26-8330-5662dc85921f"
  features {}
}

# Creating a Resource group
resource "azurerm_resource_group" "DCC-RG" {
  name = "DCC-RG"
  location = "West us"
}
