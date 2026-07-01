variable "resource_groups" {
  description = "Resource group definitions for the selected region"
  type        = map(string)

    default = {}
}

variable "tags" {
  description = "Common tags for the resource group resources"
  type        = map(string)
}

variable "costcenter" {
  description = "The cost center associated with the resource group"
  type        = string
}

variable "environment" {
  description = "The environment (Prod | Dev-Test) variable for  the resource group"
  type        = string
}

variable "managedby" {
  description = "The name of the person or team managing the resource group"
  type        = string
}

variable "resourcelocation" {
  description = "The location of the Azure Resource Group"
  type        = string
}
