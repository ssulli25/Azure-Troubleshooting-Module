output "resource_group_name" {
  description = "The name of the resource group"
  value       = azurerm_resource_group.rg.name
}

output "vnet_name" {
  description = "The name of the virtual network"
  value       = azurerm_virtual_network.vnet.name
}

output "mgmt_subnet_address_prefix" {
  description = "The address prefix of the management subnet"
  value       = azurerm_subnet.mgmt_subnet.address_prefixes
}

output "bastion_subnet_address_prefix" {
  description = "The address prefix of the bastion subnet"
  value       = azurerm_subnet.bastion_subnet.address_prefixes
}