terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "2.88.1"
    }
    random = {
        source = "hashicorp/random"
        version = "3.5.0"
    }
  }
}

provider "azurerm" {
  features {
    
  }
}
module "ResourceGroup" {
  source = "/home/momo/TERRAFORM/TERRATEST/LAB/ModuleTERRAFORM/ResourceGroup"
  base_name = "LASTerraformExemple"
  location = "westeurope"
}

module "StorageAccount" {
  source = "/home/momo/TERRAFORM/TERRATEST/LAB/ModuleTERRAFORM/StorageAccount"
  base_name = "LASTerraforExemple"
  resource_group_name = module.ResourceGroup.rg_name_out
  location = "westeurope"
}