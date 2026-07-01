## Variable block for declating environment variable for resource group 
variable "environment" {
  description = "The environment 'Dev-Test' variable for  the resource group"
  type        = string
  default     = "dev-test"
}
