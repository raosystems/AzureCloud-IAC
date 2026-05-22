## This code block defines required_providers and provider version to deploy infrastructure on Azure.
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=4.73.0"
    }
  }
}

## This code block defines the Azure provider.
provider "azurerm" {
  features {}
  
  subscription_id       = var.subscription_id
  client_id             = var.client_id
  client_secret         = var.client_secret
  tenant_id             = var.tenant_id
  skip_provider_registration = false
}

## Azure requires a Resource Group to contain all resources.
resource "azurerm_resource_group" "myfirstazurerg-1" {
  name     = "rg-CreatedByAmit"
  location = "East US"
}

## This code block defines the Virtual Network (equivalent to AWS VPC).
resource "azurerm_virtual_network" "myfirstazurevnet-1" {
  name                = "vnet-CreatedByAmit"
  location            = azurerm_resource_group.myfirstazurerg-1.location
  resource_group_name = azurerm_resource_group.myfirstazurerg-1.name
  address_space       = ["10.0.0.0/16"]
}

## This code block defines the Subnet.
resource "azurerm_subnet" "myfirstazuresubnet-1" {
  name                 = "subnet-CreatedByAmit"
  resource_group_name  = azurerm_resource_group.myfirstazurerg-1.name
  virtual_network_name = azurerm_virtual_network.myfirstazurevnet-1.name
  address_prefixes     = ["10.0.1.0/24"]
}

## Network Interface is explicitly required for an Azure VM.
resource "azurerm_network_interface" "myfirstazurenic-1" {
  name                = "nic-CreatedByAmit"
  location            = azurerm_resource_group.myfirstazurerg-1.location
  resource_group_name = azurerm_resource_group.myfirstazurerg-1.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.myfirstazuresubnet-1.id
    private_ip_address_allocation = "Dynamic"
  }
}

## This code block defines the Virtual Machine (equivalent to AWS EC2 Instance).
resource "azurerm_linux_virtual_machine" "myfirstazurevm-1" {
  name                            = "vm-CreatedByAmit"
  resource_group_name             = azurerm_resource_group.myfirstazurerg-1.name
  location                        = azurerm_resource_group.myfirstazurerg-1.location
  size                            = "Standard_B1s" # Equivalent to t3.micro
  admin_username                  = "adminuser"
  admin_password                  = "P@ssw0rd1234!" # Use SSH keys in production
  disable_password_authentication = false

  network_interface_ids = [
    azurerm_network_interface.myfirstazurenic-1.id,
  ]

  # Azure requires an explicit OS disk configuration
  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  # Azure uses publisher/offer/sku instead of AMI
  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
  
  tags = {
    Name = "instance-CreatedByAmit"
  }
}

## This code block defines the Managed Disk (equivalent to AWS EBS volume).
resource "azurerm_managed_disk" "myfirstazuredisk-1" {
  name                 = "disk-CreatedByAmit"
  location             = azurerm_resource_group.myfirstazurerg-1.location
  resource_group_name  = azurerm_resource_group.myfirstazurerg-1.name
  storage_account_type = "Standard_LRS"
  create_option        = "Empty"
  disk_size_gb         = 8
  
  tags = {
    Name = "ebsvolume-CreatedByAmit"
  }
}

## This code block defines the attachment of the disk to the VM.
resource "azurerm_virtual_machine_data_disk_attachment" "myfirstazurediskattachment-1" {
  managed_disk_id    = azurerm_managed_disk.myfirstazuredisk-1.id
  virtual_machine_id = azurerm_linux_virtual_machine.myfirstazurevm-1.id
  lun                = "10"
  caching            = "ReadWrite"
}
