## Code block to define resoures "All Resource Groups" using for_each loop
resource "azurerm_resource_group" "rg-eastus2" {
  for_each = var.resource_groups_east_us_2

  name     = each.key
  location = each.value
  tags     = local.common_tags
}

/*resource "azurerm_resource_group" "rg-centralus" {
  for_each = var.resource_groups_central_us

  name     = each.key
  location = each.value
  tags     = merge(local.common_tags_environment, local.common_tags_resourcelocation)
}*/