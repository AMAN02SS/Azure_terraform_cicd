terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-terraform-state-demo" # Change this if your storage account is in another RG
    storage_account_name = "sttfstate05102026"
    container_name       = "tfstate"
    key                  = "rg-demo.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}
