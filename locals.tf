locals {
  common_tags = {
    CostCenter                 = var.CostCenter
    CreatedBy                  = var.CreatedBy
    Environment                = var.Environment-Prod
    ResourceOwner              = var.ResourceOwner
    SupportTeam-CloudEngg      = var.SupportTeam-CloudEnggTeam
    ManagedBy                  = var.ManagedBy
    CreatedDate                = formatdate("DD-MMM-YYYY", timestamp())
    ResourceLocation-EastUs2   = var.ResourceLocation_EastUs2
    #ResourceLocation_CentralUS = var.ResourceLocation_CentralUs
  }
}