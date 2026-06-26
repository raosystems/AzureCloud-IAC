## This code block defines required providers and Resource Manager Provider version to deploy infrastructure on Azure.
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=4.79.0"
    }
  }
}

## This code block defines the Azure Resource Manager provider.
provider "azurerm" {
  features {}
  
  subscription_id       = var.subscription_id
  client_id             = var.client_id
  client_secret         = var.client_secret
  tenant_id             = var.tenant_id
}
