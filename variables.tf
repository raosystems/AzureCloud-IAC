## Variable Block to declare Service Principal Credentials; Subscription ID, Client ID, Client Secret, and Tenant ID
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


##---------------------------------------------------------------------------##
## Variable Block to declate Multiple Resource Groups for Azure Cloud Resources; 
## Virtual Machines, Storage, Active Directory, Database, and Function App 
variable "resource_group_name_for_automation" {
  description = "The name of the Azure Resource Group for Automation"
  type        = string
}

variable "resource_group_name_for_avd" {
  description = "The name of the Azure Resource Group for AVD"
  type        = string
}

variable "resource_group_name_for_database" {
  description = "The name of the Azure Resource Group for Database"
  type        = string
}

variable "resource_group_name_for_firewall" {
  description = "The name of the Azure Resource Group for Firewall"
  type        = string
}

variable "resource_group_name_for_function_app" {
  description = "The name of the Azure Resource Group for Function App"
  type        = string
}

variable "resource_group_name_for_loadbalancer" {
  description = "The name of the Azure Resource Group for Load Balancer"
  type        = string
}

variable "resource_group_name_for_logicapp" {
  description = "The name of the Azure Resource Group for Logic App"
  type        = string
}

variable "resource_group_name_for_netappfiles" {
  description = "The name of the Azure Resource Group for NetApp Files"
  type        = string
}

variable "resource_group_name_for_network" {
  description = "The name of the Azure Resource Group for Network"
  type        = string
}

variable "resource_group_name_for_privatedns" {
  description = "The name of the Azure Resource Group for Private DNS"
  type        = string
}

variable "resource_group_name_for_storage" {
  description = "The name of the Azure Resource Group for Storage"
  type        = string
}

variable "resource_group_name_for_vm" {
  description = "The name of the Azure Resource Group for Virtual Machines"
  type        = string
}

variable "resource_group_name_for_webapp" {
  description = "The name of the Azure Resource Group for Web App"
  type        = string
}


##---------------------------------------------------------------------------##
## Variable Block to declare variables for TAGS
variable "CostCenter" {
  description = "The cost center associated with the resource group"
  type        = string
}

variable "CreatedBy" {
  description = "The name of the person who created the resource group"
  type        = string
}

variable "Environment-Prod" {
  description = "The production environment for the resource group"
  type        = string
}

variable "Environment-Dev-Test" {
  description = "The Dev-Test environment for the resource group"
  type        = string
}

variable "ResourceOwner" {
  description = "The name of the person or team responsible for the resource group"
  type        = string
}
variable "SupportTeam-CloudEnggTeam" {
  description = "The name of the support team responsible for the resource group"
  type        = string
}

variable "ManagedBy" {
  description = "The name of the person or team managing the resource group"
  type        = string
}

/*variable "CreatedDate" {
  description = "The date when the resource group was created"
  type        = string
}*/


##---------------------------------------------------------------------------##
## Variable Block to declate Azure Cloud Resource Locations
variable "ResourceLocation_EastUs2" {
  description = "The location of the Azure Resources deployed in Region East US 2"
  type        = string
  default     = "East US 2"
}

variable "ResourceLocation_CentralUS" {
  description = "The location of the Azure Resources deployed in Region Central US"
  type        = string
  default     = "Central US"
}
