#### Terraform Backend Configuration Section ###
terraform {
  backend "azurerm" {
    resource_group_name  = "tf-backend-rg" # Replace with your backend resource group name
    storage_account_name = "storage_account_name" # Replace with your backend storage account name
    container_name       = "sls-tf-backend-container" # Replace with your backend container name
    key                  = "terraform.tfstate" # Replace with your backend key
    use_azuread_auth     = true
  }
}


### Variables Section ###

variable "location" {
  description = "The Azure region where resources will be created"
  type        = string
}

variable "vnet_address_space" {
  description = "The address space for the virtual network"
  type        = string
}

variable "bastion_enabled" {
  description = "Flag to enable or disable the Azure Bastion host"
  type        = bool
  default     = true
}

variable "troubleshooting_vm_enabled" {
  description = "Flag to enable or disable the troubleshooting VM"
  type        = bool
  default     = true
}

variable "admin_username" {
  description = "The admin username for the troubleshooting VM"
  type        = string
  sensitive   = true
}

variable "admin_password" {
  description = "The admin password for the troubleshooting VM"
  type        = string
  sensitive   = true
}

variable "subscription_id" {
  description = "The Azure subscription ID where resources will be created"
  type        = string
  sensitive   = true
}

### Module Invocation Section ###

module "azure_vnet" {
  source                     = "./module"
  location                   = var.location
  vnet_address_space         = var.vnet_address_space
  bastion_enabled            = var.bastion_enabled
  troubleshooting_vm_enabled = var.troubleshooting_vm_enabled
  admin_username             = var.admin_username
  admin_password             = var.admin_password
  subscription_id            = var.subscription_id
}

### Output Section ###

output "resource_group_name" {
  description = "The name of the resource group from the module"
  value       = module.azure_vnet.resource_group_name
}

output "vnet_name" {
  description = "The name of the virtual network from the module"
  value       = module.azure_vnet.vnet_name
}

output "mgmt_subnet_address_prefix" {
  description = "The address prefix of the management subnet from the module"
  value       = module.azure_vnet.mgmt_subnet_address_prefix
}

output "bastion_subnet_address_prefix" {
  description = "The address prefix of the bastion subnet from the module"
  value       = module.azure_vnet.bastion_subnet_address_prefix
}