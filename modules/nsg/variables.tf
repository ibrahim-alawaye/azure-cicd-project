variable "location" {
  description = "Azure region where resources will be created"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "subnet_nsg_mappings" {
  description = "Map of subnet to NSG names"
  type        = map(string)
}
