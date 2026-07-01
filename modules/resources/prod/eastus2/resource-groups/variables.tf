variable "resource_groups" {
  description = "Resource group definitions for the selected region"
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

variable "tags" {
  description = "Common tags for the resource group resources"
  type        = map(string)
}
