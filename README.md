# Azure Load Balanced Infrastructure Project

This project implements a secure, load-balanced infrastructure in Azure using Terraform. It creates a complete environment with virtual networks, subnets, network security groups, and virtual machines behind a load balancer.

## Architecture

- Virtual Network with multiple subnets
- Network Security Groups with SSH access
- Azure Load Balancer with health probes
- Multiple backend VMs for high availability
- Modular Terraform structure

## Prerequisites

- Azure CLI installed and configured
- Terraform installed (version 0.12+)
- Azure subscription
- Storage account for Terraform state

## Module Structure

.
├── main.tf
├── variables.tf
├── outputs.tf
└── modules/
    ├── resource_group/
    ├── network/
    ├── nsg/
    └── load_balancer/

## Modules

- **Resource Group**: Manages Azure resource group
- **Network**: Handles VNet and subnet creation
- **NSG**: Configures network security groups
- **Load Balancer**: Sets up load balancer with VM backend pool

## Usage

1. Initialize Terraform:
```bash
terraform init
