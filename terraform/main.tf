### Module Invocation Section ###

module "azure_vnet" {
  source                     = "./module"
  location                   = "eastus2"
  vnet_address_space         = "10.0.0.0/24"
  bastion_enabled            = true
  troubleshooting_vm_enabled = true
  admin_username             = "your-username"
  admin_password             = "your-password"
  subscription_id            = "your-subscription-id"
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