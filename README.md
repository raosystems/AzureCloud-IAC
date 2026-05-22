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

## GitHub Actions VM Deployment

A workflow is included at `.github/workflows/vm-deploy.yml` to deploy this Azure VM configuration.

### Required repository secrets

- `AZURE_CREDENTIALS`
- `AZURE_SUBSCRIPTION_ID`
- `AZURE_CLIENT_ID`
- `AZURE_CLIENT_SECRET`
- `AZURE_TENANT_ID`

### How to use

1. Add the secrets to your repository in GitHub Settings > Secrets and variables > Actions.
2. Push to the `main` branch or run the workflow manually from the Actions tab.
3. The workflow will run `terraform init`, `terraform validate`, `terraform plan`, and `terraform apply`.
