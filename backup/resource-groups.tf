### Common Block for Azure Resource Groups for Azure Resources
resource "azurerm_resource_group" "rg1_for_automation" {
  name     = var.resource_group_name_for_automation
  location = var.ResourceLocation_EastUs2
  tags     = local.common_tags
}

resource "azurerm_resource_group" "rg1_for_avd" {
  name     = var.resource_group_name_for_avd
  location = var.ResourceLocation_EastUs2
  tags     = local.common_tags
}

resource "azurerm_resource_group" "rg1_for_database" {
  name     = var.resource_group_name_for_database
  location = var.ResourceLocation_EastUs2
  tags     = local.common_tags
}

resource "azurerm_resource_group" "rg1_for_firewall" {
  name     = var.resource_group_name_for_firewall
  location = var.ResourceLocation_EastUs2
  tags     = local.common_tags
}

resource "azurerm_resource_group" "rg1_for_function_app" {
  name     = var.resource_group_name_for_function_app
  location = var.ResourceLocation_EastUs2
  tags     = local.common_tags
}

resource "azurerm_resource_group" "rg1_for_loadbalancer" {
  name     = var.resource_group_name_for_loadbalancer
  location = var.ResourceLocation_EastUs2
  tags     = local.common_tags
}

resource "azurerm_resource_group" "rg1_for_logicapp" {
  name     = var.resource_group_name_for_logicapp
  location = var.ResourceLocation_EastUs2
  tags     = local.common_tags
}

resource "azurerm_resource_group" "rg1_for_netappfiles" {
  name     = var.resource_group_name_for_netappfiles
  location = var.ResourceLocation_EastUs2
  tags     = local.common_tags
}

resource "azurerm_resource_group" "rg1_for_network" {
  name     = var.resource_group_name_for_network
  location = var.ResourceLocation_EastUs2
  tags     = local.common_tags
}

resource "azurerm_resource_group" "rg1_for_privatedns" {
  name     = var.resource_group_name_for_privatedns
  location = var.ResourceLocation_EastUs2
  tags     = local.common_tags
}

resource "azurerm_resource_group" "rg1_for_storage" {
  name     = var.resource_group_name_for_storage
  location = var.ResourceLocation_EastUs2
  tags     = local.common_tags
}

resource "azurerm_resource_group" "rg1_for_vm" {
  name     = var.resource_group_name_for_vm
  location = var.ResourceLocation_EastUs2
  tags     = local.common_tags
}

resource "azurerm_resource_group" "rg1_for_webapp" {
  name     = var.resource_group_name_for_webapp
  location = var.ResourceLocation_EastUs2
  tags     = local.common_tags
}