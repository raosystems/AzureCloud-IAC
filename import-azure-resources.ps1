<#
.SYNOPSIS
  Guide for Azure login and resource import into Terraform.
.DESCRIPTION
  This script checks whether Azure CLI is installed, prompts for login,
  and provides example Terraform import commands.
  It cannot automatically import all Azure resources because Terraform
  configuration blocks must match each imported resource.
#>

$ErrorActionPreference = 'Stop'

function Check-AzureCli {
    if (-not (Get-Command az -ErrorAction SilentlyContinue)) {
        Write-Error "Azure CLI ('az') is not installed on this machine. Install it from https://learn.microsoft.com/cli/azure/install-azure-cli."
        exit 1
    }
}

function Ensure-AzureLogin {
    try {
        az account show > $null 2>&1
    } catch {
        Write-Host "Azure CLI not authenticated. Launching browser login..."
        az login | Out-Null
    }

    $account = az account show --query '{name:name,tenantId:tenantId,subscriptionId:id}' --output json | ConvertFrom-Json
    Write-Host "Signed in to subscription: $($account.name) ($($account.subscriptionId))"
}

function Show-ImportExamples {
    Write-Host "`nExample Terraform import commands:`

";
    Write-Host "terraform init"
    Write-Host "terraform import azurerm_resource_group.myfirstazurerg /subscriptions/<SUBSCRIPTION_ID>/resourceGroups/<RESOURCE_GROUP_NAME>"
    Write-Host "terraform import azurerm_virtual_network.myfirstazurevnet /subscriptions/<SUBSCRIPTION_ID>/resourceGroups/<RESOURCE_GROUP_NAME>/providers/Microsoft.Network/virtualNetworks/<VNET_NAME>"
    Write-Host "terraform import azurerm_subnet.myfirstazuresubnet /subscriptions/<SUBSCRIPTION_ID>/resourceGroups/<RESOURCE_GROUP_NAME>/providers/Microsoft.Network/virtualNetworks/<VNET_NAME>/subnets/<SUBNET_NAME>"
    Write-Host "terraform import azurerm_network_interface.myfirstazurenic /subscriptions/<SUBSCRIPTION_ID>/resourceGroups/<RESOURCE_GROUP_NAME>/providers/Microsoft.Network/networkInterfaces/<NIC_NAME>"
    Write-Host "terraform import azurerm_linux_virtual_machine.myfirstazurevm /subscriptions/<SUBSCRIPTION_ID>/resourceGroups/<RESOURCE_GROUP_NAME>/providers/Microsoft.Compute/virtualMachines/<VM_NAME>"
    Write-Host "terraform import azurerm_managed_disk.myfirstazuredisk /subscriptions/<SUBSCRIPTION_ID>/resourceGroups/<RESOURCE_GROUP_NAME>/providers/Microsoft.Compute/disks/<DISK_NAME>"
    Write-Host "terraform import azurerm_virtual_machine_data_disk_attachment.myfirstazurediskattachment /subscriptions/<SUBSCRIPTION_ID>/resourceGroups/<RESOURCE_GROUP_NAME>/providers/Microsoft.Compute/virtualMachines/<VM_NAME>/dataDisks/10"
}

Check-AzureCli
Ensure-AzureLogin
Show-ImportExamples
