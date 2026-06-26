resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name_for_vm
  location = var.resource_group_location

  tags = {
    Environment = var.Environment
    ManagedBy   = var.ManagedBy
    CreatedBy   = var.CreatedBy
    CostCenter  = var.CostCenter
  }
}
