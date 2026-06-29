locals {
  common_tags_for_prod = {
    CostCenter               = var.CostCenter
    CreatedBy                = var.CreatedBy
    Environment              = var.Environment-Prod
    ResourceOwner            = var.ResourceOwner
    SupportTeam-CloudEngg    = var.SupportTeam-CloudEnggTeam
    ManagedBy                = var.ManagedBy
    CreatedDate              = formatdate("DD-MMM-YYYY", timestamp())
    ResourceLocation-EastUs2 = var.ResourceLocation_EastUs2
  }
}

locals {
  common_tags_for_dev_test = {
    CostCenter               = var.CostCenter
    CreatedBy                = var.CreatedBy
    Environment              = var.Environment-Dev-Test
    ResourceOwner            = var.ResourceOwner
    SupportTeam-CloudEngg    = var.SupportTeam-CloudEnggTeam
    ManagedBy                = var.ManagedBy
    CreatedDate              = formatdate("DD-MMM-YYYY", timestamp())
    ResourceLocation-EastUs2 = var.ResourceLocation_EastUs2
  }
}

locals {
  common_tags = var.Environment-Prod == "prod" ? local.common_tags_for_prod : local.common_tags_for_dev_test
}