/*output "resource_group_name_for_vm" {
  value = azurerm_resource_group.rg1_for_vm.id
}

output "resource_group_name_for_storage" {
  value = azurerm_resource_group.rg1_for_storage.id
}

output "vm_resource_location_east_us_2" {
  value = azurerm_resource_group.rg1_for_vm.location
}

output "storage_resource_location_east_us_2" {
  value = azurerm_resource_group.rg1_for_storage.location
}
*/

output "resource_group_names" {
  value = [
    for rg in azurerm_resource_group.rg : rg.name
  ]
}