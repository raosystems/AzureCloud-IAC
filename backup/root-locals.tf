## Local block to declate tag values for resource groups based on environment (Prod | Dev-Test) variable
locals {
  common_tags = {
    costcenter            = var.costcenter
    createdby             = var.createdby
    environment           = lower(var.environment) == "prod" ? "prod" : "dev-test"
    resourceowner         = var.resourceowner
    supportteam-cloudengg = var.supportteam-cloudenggteam
    managedby             = var.managedby
    resourcelocation      = lower(var.resourcelocation) == "east us 2" ? var.resourcelocation_eastus2 : var.resourcelocation_centralus
    #CreatedDate          = formatdate("DD-MMM-YYYY", timestamp())
  }
}