# Contributing to AzureCloud-IAC

Thank you for your interest in contributing to AzureCloud-IAC! This document provides guidelines and instructions for contributing to the project.

## 📋 Table of Contents

- [Code of Conduct](#code-of-conduct)
- [Getting Started](#getting-started)
- [Development Setup](#development-setup)
- [Making Changes](#making-changes)
- [Submitting Changes](#submitting-changes)
- [Coding Standards](#coding-standards)
- [Testing](#testing)
- [Reporting Issues](#reporting-issues)

## Code of Conduct

This project adheres to a code of conduct. By participating, you are expected to uphold this code. Please report unacceptable behavior to the project maintainers.

### Our Pledge

We are committed to providing a welcoming and inspiring community for all. Please read and abide by our Code of Conduct.

## Getting Started

1. **Fork the repository** on GitHub
2. **Clone your fork** locally:
   ```bash
   git clone https://github.com/YOUR_USERNAME/AzureCloud-IAC.git
   cd AzureCloud-IAC
   ```

3. **Add upstream remote** to keep your fork in sync:
   ```bash
   git remote add upstream https://github.com/amitrao2026ce/AzureCloud-IAC.git
   ```

## Development Setup

### Prerequisites

- Terraform >= 1.0
- Azure CLI
- Git

### Setup Development Environment

1. **Initialize Terraform**
   ```bash
   terraform init
   ```

2. **Create your own `terraform.tfvars`** (do NOT commit this):
   ```bash
   cp terraform.tfvars.example terraform.tfvars
   # Edit with your Azure credentials
   ```

3. **Validate your configuration**
   ```bash
   terraform validate
   terraform fmt -check
   ```

## Making Changes

### Create a Feature Branch

1. **Update main branch**
   ```bash
   git fetch upstream
   git checkout main
   git merge upstream/main
   ```

2. **Create a new branch**
   ```bash
   git checkout -b feature/description-of-feature
   # or for bug fixes:
   git checkout -b fix/description-of-bug
   ```

### Commit Message Guidelines

- Use the present tense ("Add feature" not "Added feature")
- Use the imperative mood ("Move cursor to..." not "Moves cursor to...")
- Limit the first line to 72 characters or less
- Reference issues and pull requests liberally after the first line

Example:
```
Add support for multiple resource groups

- Implement multi-group configuration
- Update documentation
- Add integration tests

Fixes #123
```

## Submitting Changes

### Before You Submit

1. **Terraform Format Check**
   ```bash
   terraform fmt -recursive
   ```

2. **Terraform Validation**
   ```bash
   terraform validate
   ```

3. **Test Your Changes**
   ```bash
   terraform plan
   ```

4. **Ensure `.gitignore` is updated** if you added new files

### Creating a Pull Request

1. **Push your branch** to your fork:
   ```bash
   git push origin feature/description-of-feature
   ```

2. **Open a Pull Request** on GitHub with:
   - Clear description of changes
   - Reference to related issues
   - Screenshots/outputs if applicable
   - Checklist of testing performed

3. **Pull Request Title Format**
   ```
   [TYPE] Brief description
   ```

   Types: `[Feature]`, `[Fix]`, `[Docs]`, `[Refactor]`, `[Test]`

## Coding Standards

### Terraform Best Practices

- ✅ Use consistent naming conventions (snake_case for variables and resources)
- ✅ Add descriptive comments for complex configurations
- ✅ Use meaningful variable descriptions
- ✅ Organize resources logically
- ✅ Use `locals` for computed values
- ✅ Avoid hardcoding values - use variables
- ✅ Follow the Terraform style guide

### File Organization

```
├── main-azure.tf         # Primary Azure resources
├── variables.tf          # Variable definitions
├── outputs.tf            # Output definitions
├── locals.tf            # Local values
└── terraform.tfvars.example # Example variables
```

### Variable Naming

```hcl
# Good
variable "resource_group_name" {
  description = "Name of the Azure resource group"
  type        = string
}

# Avoid
variable "rg_nm" {
  description = "RG"
  type        = string
}
```

## Testing

### Manual Testing

Before submitting a PR, test your changes:

```bash
# Initialize
terraform init

# Validate syntax
terraform validate

# Format check
terraform fmt -check -recursive

# Dry run
terraform plan

# (Optional) Apply to test environment
terraform apply -auto-approve
# Destroy after testing
terraform destroy -auto-approve
```

### Writing Tests

For complex configurations, consider adding integration tests or documentation of tested scenarios.

## Reporting Issues

### Bug Reports

When reporting bugs, include:

- **Title**: Brief description
- **Description**: Detailed explanation
- **Steps to Reproduce**: How to replicate the issue
- **Expected Behavior**: What should happen
- **Actual Behavior**: What actually happens
- **Environment**: OS, Terraform version, Azure CLI version
- **Logs**: Terraform error output (sanitize sensitive data)

### Feature Requests

When requesting features:

- **Title**: Brief feature description
- **Use Case**: Why this feature is needed
- **Proposed Solution**: Your suggested implementation
- **Alternatives**: Other approaches considered

## Questions?

- 📧 Open an issue with the `[Question]` label
- 💬 Discuss in GitHub Discussions
- 📚 Check existing documentation and issues

## License

By contributing to this project, you agree that your contributions will be licensed under its MIT License.

---

Thank you for contributing! 🎉
