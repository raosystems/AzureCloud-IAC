# AzureCloud-IAC
Azure Cloud IAC Repository

## Import existing Azure resources

This repository is currently configured for Azure resources in `main-azure.tf`.
To import resources from your Azure subscription:

- Install Azure CLI: https://learn.microsoft.com/cli/azure/install-azure-cli
- Authenticate with `az login`
- Run `terraform init` in this folder
- Use `terraform import` for each resource, matching the Terraform resource block names in `main-azure.tf`

A helper script is included: `import-azure-resources.ps1`

This repository contains Terraform configuration in `main-azure.tf`.
Use `terraform init` and `terraform apply main-azure.tf` to deploy.
