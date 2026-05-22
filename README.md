# 🏗️ AzureCloud-IAC

Azure Cloud Infrastructure as Code Repository - Deploy and manage Azure resources using Terraform.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Terraform](https://img.shields.io/badge/Terraform-%3E%3D1.0-blue)](https://www.terraform.io/)

## 📋 Overview

This repository contains Terraform configurations for deploying and managing Azure cloud infrastructure. It includes support for both creating new resources and importing existing ones from your Azure subscription.

## 📁 Repository Structure

```
AzureCloud-IAC/
├── main-azure.tf           # Azure resource definitions
├── variables.tf            # Input variables
├── terraform.tfvars.example # Example variables file
├── .gitignore             # Git ignore rules
└── .github/workflows/     # CI/CD workflows
    └── vm-deploy.yml      # GitHub Actions deployment workflow
```

## 🚀 Quick Start

### Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) >= 1.0
- [Azure CLI](https://learn.microsoft.com/cli/azure/install-azure-cli)
- Azure subscription with appropriate permissions

### Setup

1. **Clone the repository**
   ```bash
   git clone https://github.com/amitrao2026ce/AzureCloud-IAC.git
   cd AzureCloud-IAC
   ```

2. **Configure variables**
   ```bash
   cp terraform.tfvars.example terraform.tfvars
   # Edit terraform.tfvars with your Azure settings
   ```

3. **Authenticate with Azure**
   ```bash
   az login
   ```

4. **Initialize Terraform**
   ```bash
   terraform init
   ```

5. **Plan and apply**
   ```bash
   terraform plan
   terraform apply
   ```

## 📦 Importing Existing Azure Resources

To manage existing Azure resources with Terraform:

1. **Authenticate with Azure**
   ```bash
   az login
   ```

2. **Initialize Terraform**
   ```bash
   terraform init
   ```

3. **Import resources** using the `terraform import` command:
   ```bash
   terraform import <resource_type>.<resource_name> <azure_resource_id>
   ```

   Example:
   ```bash
   terraform import azurerm_virtual_machine.myvm /subscriptions/<subscription-id>/resourceGroups/<resource-group>/providers/Microsoft.Compute/virtualMachines/<vm-name>
   ```

**Note:** A helper script is included: `import-azure-resources.ps1`

## 🔄 GitHub Actions - Automated Deployment

This repository includes a GitHub Actions workflow for automated Terraform deployments.

### Required Secrets

Configure the following secrets in **GitHub Settings > Secrets and variables > Actions**:

| Secret | Description |
|--------|-------------|
| `AZURE_CREDENTIALS` | Azure service principal JSON credentials |
| `AZURE_SUBSCRIPTION_ID` | Your Azure subscription ID |
| `AZURE_CLIENT_ID` | Service principal client ID |
| `AZURE_CLIENT_SECRET` | Service principal client secret |
| `AZURE_TENANT_ID` | Azure tenant ID |

### Creating AZURE_CREDENTIALS

Use the Azure CLI to generate credentials:

```bash
az ad sp create-for-rbac \
  --name "github-actions-terraform" \
  --role Contributor \
  --scopes "/subscriptions/<SUBSCRIPTION_ID>" \
  --sdk-auth
```

Copy the JSON output and paste it as the `AZURE_CREDENTIALS` secret.

### Workflow Execution

- **Automatic:** Triggered on push to `main` branch
- **Manual:** Run from the GitHub Actions tab in your repository

The workflow performs:
1. `terraform init` - Initialize Terraform
2. `terraform validate` - Validate configuration
3. `terraform plan` - Generate execution plan
4. `terraform apply` - Deploy resources

## 📝 Configuration Files

### terraform.tfvars.example

```hcl
# Example variables configuration
# Copy to terraform.tfvars and update with your values
```

## 🔒 Security Best Practices

- ✅ Never commit `terraform.tfvars` or `.tfvars` files with sensitive data
- ✅ Use Azure Key Vault for secret management
- ✅ Rotate service principal credentials regularly
- ✅ Enable state file encryption and remote storage
- ✅ Use branch protection rules for `main` branch
- ✅ Review Terraform plans before applying changes

## 📚 Documentation

- [Azure Provider Documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs)
- [Terraform Documentation](https://www.terraform.io/docs/)
- [Azure CLI Documentation](https://learn.microsoft.com/cli/azure/)

## 🤝 Contributing

1. Create a feature branch: `git checkout -b feature/your-feature`
2. Commit your changes: `git commit -am 'Add new feature'`
3. Push to the branch: `git push origin feature/your-feature`
4. Submit a pull request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👤 Author

**Amit Kumar**  
GitHub: [@amitrao2026ce](https://github.com/amitrao2026ce)

## 📞 Support

For issues, questions, or contributions, please open an issue on [GitHub Issues](https://github.com/amitrao2026ce/AzureCloud-IAC/issues).

---

**Last Updated:** May 22, 2026
