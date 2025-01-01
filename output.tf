output "resource_group_name" {
  description = "Name of the created resource group"
  value       = module.resource_group.name
}

output "vnet_name" {
  description = "Name of the created virtual network"
  value       = module.network.vnet_name
}

output "subnet_ids" {
  description = "Map of created subnet IDs"
  value       = module.network.subnet_ids
}

output "load_balancer_ip" {
  description = "Public IP of the load balancer"
  value       = module.load_balancer.lb_ip
}
