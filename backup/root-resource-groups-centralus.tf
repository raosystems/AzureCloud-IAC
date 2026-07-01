resource "azurerm_resource_group" "rg-centralus" {
  for_each = lower(var.resourcelocation) == "central us" ? var.resource_groups_central_us : {}

  name     = each.key
  location = each.value
  tags     = local.common_tags
}
