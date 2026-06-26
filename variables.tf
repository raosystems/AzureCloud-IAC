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

variable "resource_group_name_for_vm" {
  description = "The name of the Azure Resource Group for Virtual Machines"
  type        = string
}

variable "resource_group_location" {
  description = "The location of the Azure Resource Group for Virtual Machines"
  type        = string
  default     = "East US 2"
}

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
