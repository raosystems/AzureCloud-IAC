## Variable Section for Service Principal Credentials
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

## Variable Section for Resource Group for Virtual Machines
variable "resource_group_name_for_vm" {
  description = "The name of the Azure Resource Group for Virtual Machines"
  type        = string
}

## Variable Section for Resource Group for Storage 
variable "resource_group_name_for_storage" {
  description = "The name of the Azure Resource Group for Storage"
  type        = string
}

## Variable Section for Resource Location
variable "resource_location_east_us_2" {
  description = "The location of the Azure Resource Group for Virtual Machines"
  type        = string
  default     = "East US 2"
}

#Variable Section for TAGS
variable "CreatedBy" {
  description = "The name of the person who created the resource group"
  type        = string
}

variable "CostCenter" {
  description = "The cost center associated with the resource group"
  type        = string
}

variable "ManagedBy" {
  description = "The name of the person or team managing the resource group"
  type        = string
}

variable "Environment" {
  description = "The environment for the resource group (e.g., Production, Development)"
  type        = string
}
