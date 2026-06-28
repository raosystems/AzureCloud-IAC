## Resource Group for Virtual Machines
resource "azurerm_resource_group" "rg1_for_vm" {
  name     = var.resource_group_name_for_vm
  location = var.resource_location_east_us_2

  tags = {
    Environment      = var.Environment
    ManagedBy        = var.ManagedBy
    CreatedBy        = var.CreatedBy
    CostCenter       = var.CostCenter
    ResourceLocation = var.resource_location_east_us_2
  }
}

## Resource Group for Storage
resource "azurerm_resource_group" "rg1_for_storage" {
  name     = var.resource_group_name_for_storage
  location = var.resource_location_east_us_2

  tags = {
    Environment      = var.Environment
    ManagedBy        = var.ManagedBy
    CreatedBy        = var.CreatedBy
    CostCenter       = var.CostCenter
    ResourceLocation = var.resource_location_east_us_2
  }
}

resource "azurerm_resource_group" "rg1_for_active_directory" {
  name     = var.resource_group_name_for_active_directory
  location = var.resource_location_east_us_2

  tags = {
    Environment      = var.Environment
    ManagedBy        = var.ManagedBy
    CreatedBy        = var.CreatedBy
    CostCenter       = var.CostCenter
    ResourceLocation = var.resource_location_east_us_2
  }
}
