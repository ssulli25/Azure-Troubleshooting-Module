variable "location" {
  description = "The Azure region where resources will be created"
  type        = string
}

variable "vnet_address_space" {
  description = "The address space for the virtual network"
  type        = string
}

variable "subscription_id" {
  description = "The Azure Subscription ID for deployment"
  type        = string
  sensitive   = true
}

variable "bastion_enabled" {
  description = "Enable or disable the creation of the Bastion Host"
  type        = bool
}

variable "troubleshooting_vm_enabled" {
  description = "Enable or disable the creation of the Windows Troubleshooting VM"
  type        = bool
}

variable "admin_username" {
  description = "Admin username for the Windows VM"
  type        = string
  sensitive   = true
}

variable "admin_password" {
  description = "Admin password for the Windows VM"
  type        = string
  sensitive   = true
}
