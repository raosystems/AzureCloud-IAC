variable "subscription_id" {
  description = "The Azure Subscription ID"
  type        = string
  sensitive   = true
}

variable "client_id" {
  description = "The Client ID of the Service Principal"
  type        = string
  sensitive   = true
}

variable "client_secret" {
  description = "The Client Secret of the Service Principal"
  type        = string
  sensitive   = true
}

variable "tenant_id" {
  description = "The Azure Tenant ID"
  type        = string
  sensitive   = true
}

variable "costcenter" {
  description = "The cost center associated with the resource group"
  type        = string
}

variable "createdby" {
  description = "The name of the person who created the resource group"
  type        = string
}

variable "environment" {
  description = "The environment for the resource group"
  type        = string
}

variable "resourceowner" {
  description = "The name of the person or team responsible for the resource group"
  type        = string
}

variable "supportteam-cloudenggteam" {
  description = "The name of the support team responsible for the resource group"
  type        = string
}

variable "managedby" {
  description = "The name of the person or team managing the resource group"
  type        = string
}

variable "resourcelocation_eastus2" {
  description = "The location of the Azure Resources deployed in Region East US 2"
  type        = string
  default     = "East US 2"
}

variable "resourcelocation_centralus" {
  description = "The location of the Azure Resources deployed in Region Central US"
  type        = string
  default     = "Central US"
}

variable "resource_groups_east_us_2" {
  description = "Map of East US 2 resource groups and locations"
  type        = map(string)
  default = {
    rg1-automation   = "east us 2"
    rg1-avd          = "east us 2"
    rg1-database     = "east us 2"
    rg1-firewall     = "east us 2"
    rg1-functionapp  = "east us 2"
    rg1-loadbalancer = "east us 2"
    rg1-logicapp     = "east us 2"
    rg1-netappfiles  = "east us 2"
    rg1-network      = "east us 2"
    rg1-privatedns   = "east us 2"
    rg1-storage      = "east us 2"
    rg1-vm           = "east us 2"
    rg1-webapp       = "east us 2"
  }
}

variable "resource_groups_central_us" {
  description = "Map of Central US resource groups and locations"
  type        = map(string)
  default = {
    rg2-avd          = "central us"
    rg2-network      = "central us"
    rg2-privatedns   = "central us"
    rg2-storage      = "central us"
    rg2-vm           = "central us"
  }
}
