variable "resource_groups" {
  description = "Map of resource group names to locations for the target region"
  type        = map(string)
}

variable "tags" {
  description = "Tags to apply to each resource group"
  type        = map(string)
}

resource "azurerm_resource_group" "rg" {
  for_each = var.resource_groups

  name     = each.key
  location = each.value
  tags     = var.tags
}
