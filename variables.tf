
## Variable Block to declare variables for TAGS
variable "costcenter" {
  description = "The cost center associated with the resource group"
  type        = string
}

variable "createdby" {
  description = "The name of the person who created the resource group"
  type        = string
}

variable "environment-prod" {
  description = "The production environment for the resource group"
  type        = string
}

variable "environment-dev-test" {
  description = "The Dev-Test environment for the resource group"
  type        = string
}

variable "environment" {
  description = "The environment (Prod | Dev-Test) variable for  the resource group"
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

/*variable "CreatedDate" {
  description = "The date when the resource group was created"
  type        = string
}
*/
## Variable block for declating resource group names and their locations for 'east us 2' region 
variable "resource_groups_east_us_2" {
  description = "The variable section to declare resource groups in east us 2 region"
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

## Variable block for declating resource group names and their locations for 'central us' region 
variable "resource_groups_central_us" {
  description = "The variable section to declare resource groups in central us region"
  type        = map(string)

  default = {
    rg2-automation   = "central us"
    rg2-avd          = "central us"
    rg2-database     = "central us"
    rg2-firewall     = "central us"
    rg2-functionapp  = "central us"
    rg2-loadbalancer = "central us"
    rg2-logicapp     = "central us"
    rg2-netappfiles  = "central us"
    rg2-network      = "central us"
    rg2-privatedns   = "central us"
    rg2-storage      = "central us"
    rg2-vm           = "central us"
    rg2-webapp       = "central us"
  }
}


##---------------------------------------------------------------------------##
## Variable Block to declate Azure Cloud Resource Locations
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

variable "resourcelocation" {
  description = "The location of the Azure Resource Group"
  type        = string
}