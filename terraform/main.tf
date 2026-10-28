terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}


resource "azurerm_storage_account" "st" {
  name                     = "stgitopsfbarry31"
  resource_group_name      = "fbarryRG"
  location                 = "francecentral"
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "tp-gitops"
  }
}

output "storage_account_name" {
  value = azurerm_storage_account.st.name
}
