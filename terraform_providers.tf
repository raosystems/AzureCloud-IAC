## This code block defines required providers and Resource Manager Provider version to deploy infrastructure on Azure.
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=4.79.0"
    }
    random = {
      source  = "hashicorp/random"
      version = ">=3.9.0"
    }
  }
}

## This code block defines the Azure Resource Manager provider.
provider "azurerm" {
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id

  features {
    resource_group {
      prevent_deletion_if_contains_resources = true # This is to handle MCAPS or other policy driven resource creation.
    }
  }
  resource_provider_registrations = "extended"
}