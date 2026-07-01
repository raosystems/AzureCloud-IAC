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
    #CreatedDate                = formatdate("DD-MMM-YYYY", timestamp())
    #resourcelocation_eastus2   = var.resourcelocation_eastus2
    #resourcelocation_centralus = var.resourcelocation_centralus
  }

  /*common_tags_dev_test = {
    costcenter                  = var.costcenter
    createdby                   = var.createdby
    environment                 = lower(var.environment) == "dev-test" ? "dev-test" : "prod"
    resourceowner               = var.resourceowner
    supportteam-cloudengg       = var.supportteam-cloudenggteam
    managedby                   = var.managedby
    resourcelocation            = lower(var.resourcelocation) == "central us" ? var.resourcelocation_centralus : var.resourcelocation_eastus2
    #CreatedDate                = formatdate("DD-MMM-YYYY", timestamp())
    #resourcelocation_eastus2   = var.resourcelocation_eastus2
    #resourcelocation_centralus = var.resourcelocation_centralus
  }*/

  #common_tags_environment = lower(var.environment) == "prod" ? local.common_tags_for_prod : local.common_tags_dev_test
  #common_tags_resourcelocation = lower(var.resourcelocation) == "east us 2" ? local.common_tags_for_eastus2 : local.common_tags_for_centralus

}

## Local block to declate tag values for resource groups
/*locals {
  common_tags_for_eastus2 = {
    resourcelocation = var.common_tags_for_prod.resourcelocation
  }

  common_tags_for_centralus = {
    resourcelocation = var.common_tags_dev_test.resourcelocation
  }

  common_tags_resourcelocation = ignorecase(var.resourcelocation) == "east us 2" ? local.common_tags_for_eastus2 : local.common_tags_for_centralus
}*/