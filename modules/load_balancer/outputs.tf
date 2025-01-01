output "lb_id" {
  description = "The ID of the Load Balancer"
  value       = azurerm_lb.lb.id
}

output "backend_pool_id" {
  description = "The ID of the Backend Address Pool"
  value       = azurerm_lb_backend_address_pool.backend_pool.id
}

output "lb_ip" {
  description = "The public IP address of the Load Balancer"
  value       = azurerm_public_ip.lb.ip_address
}

output "vm_ids" {
  description = "The IDs of the created VMs"
  value       = azurerm_virtual_machine.vm[*].id
}
