resource "azurerm_resource_group" "rg-eastus2" {
  for_each = lower(var.resourcelocation) == "east us 2" ? var.resource_groups_east_us_2 : {}

  name     = each.key
  location = each.value
  tags     = local.common_tags
}
