provider "azurerm" {
  features {}
  subscription_id = "046aa6d4-9b8b-4446-9e0f-bdfbfcc6643b"
}

module "resource_group" {
  source              = "./modules/resource_group"
  resource_group_name = var.resource_group_name
  location            = var.location
}

terraform {
  backend "azurerm" {
    resource_group_name  = "devops-foundation-rg"
    storage_account_name = "tfstateaccount12341234"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}

module "network" {
  source              = "./modules/network"
  resource_group_name = module.resource_group.name
  vnet_name           = var.vnet_name
  location            = var.location
  vnet_address_space  = var.vnet_address_space
  subnets             = var.subnets
}

module "nsg" {
  source              = "./modules/nsg"
  resource_group_name = module.resource_group.name
  location            = var.location
  subnet_nsg_mappings = var.subnet_nsg_mappings
}

module "load_balancer" {
  source              = "./modules/load_balancer"
  resource_group_name = module.resource_group.name
  location            = var.location
  backend_subnet_id   = module.network.subnet_ids["backend"]
  vm_count           = var.vm_count
  vm_size            = var.vm_size
  admin_username     = var.admin_username
  admin_password     = var.admin_password
}
