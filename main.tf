locals {
  tags = {
    costcenter            = var.costcenter
    environment           = lower(var.environment)
    managedby             = var.managedby
    resourcelocation      = lower(var.resourcelocation)    
  }
}

variable "tags" {
  description = "Tags to apply to each resource group"
  type        = map(string)
}

module "resource_groups" {
  source          = "./modules/resources/prod/eastus2/resource-groups/"
  resource_groups = var.resource_groups_east_us_2
  tags            = merge(local.tags, var.tags)
}