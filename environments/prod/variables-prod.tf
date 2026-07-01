## Variable block for declating environment variable for resource group 
variable "environment" {
  description = "The environment 'Prod' variable for  the resource group"
  type        = string
#  default     = "prod"
}

/*variable "resourcelocation_eastus2" {
  description = "The location of the Azure Resources deployed in Region East US 2"
  type        = string
#  default     = "east us 2"
}*/
