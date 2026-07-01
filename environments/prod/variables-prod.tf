## Variable block for declating environment variable for resource group 
variable "environment" {
  description = "The environment 'Prod' variable for  the resource group"
  type        = string
  default     = "prod"
}
