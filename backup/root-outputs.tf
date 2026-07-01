output "resource_group_names_eastus2" {
  value = [
    for rg-eastus2 in azurerm_resource_group.rg-eastus2 : rg-eastus2.name
  ]
}

/*output "resource_group_names_centralus" {
  value = [
    for rg-centralus in azurerm_resource_group.rg-centralus : rg-centralus.name
  ]
}*/