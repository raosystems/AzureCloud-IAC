terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 4.79.0"
    }
  }
}

provider "azurerm" {
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id

  features {}
  resource_provider_registrations = "extended"
}

locals {
  common_tags = {
    costcenter         = var.costcenter
    createdby          = var.createdby
    environment        = lower(var.environment)
    resourceowner      = var.resourceowner
    supportteam-cloudengg = var.supportteam-cloudenggteam
    managedby          = var.managedby
    resourcelocation   = var.resourcelocation_centralus
  }
}

module "resource_groups" {
  source          = "../../modules/resource-groups"
  resource_groups = var.resource_groups_central_us
  tags            = local.common_tags
}

output "resource_group_names" {
  value = module.resource_groups.resource_group_names
}
