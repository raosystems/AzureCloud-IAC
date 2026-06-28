output "resource_group_name_for_vm" {
  value = azurerm_resource_group.rg1_for_vm.id
}

output "resource_group_name_for_storage" {
  value = azurerm_resource_group.rg1_for_storage.id
}

output "resource_group_name_for_active_directory" {
  value = azurerm_resource_group.rg1_for_active_directory.id
}

output "vm_resource_location_east_us_2" {
  value = azurerm_resource_group.rg1_for_vm.location
}

output "storage_resource_location_east_us_2" {
  value = azurerm_resource_group.rg1_for_storage.location
}