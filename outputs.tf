output "resource_group_name" {
  description = "The name of the resource group created by the child module"
  value       = module.rgroup-n01650117.resource_group_name
}

output "virtual_network_name" {
  description = "The name of the virtual network created by the child module"
  value       = module.network-n01650117.virtual_network_name
}

output "subnet_name" {
  description = "The name of the subnet created by the child module"
  value       = module.network-n01650117.subnet_name
}

output "log_analytics_workspace_name" {
  description = "The name of the log analytics workspace created by the child module"
  value       = module.common-n01650117.log_analytics_workspace_name
}

output "recovery_services_vault_name" {
  description = "The name of the recovery services vault created by the child module"
  value       = module.common-n01650117.recovery_services_vault_name
}

output "storage_account_name" {
  description = "The name of the storage account created by the child module"
  value       = module.common-n01650117.storage_account_name
}

output "linux_vm_hostnames" {
  description = "The hostnames of the VMs created by the vmlinux module"
  value       = module.vmlinux-n01650117.vm_hostnames
}

output "linux_vm_domain_names" {
  description = "The domain names of the VMs created by the vmlinux module"
  value       = module.vmlinux-n01650117.vm_domain_names
}

output "linux_vm_fqdns" {
  description = "The FQDNs of the Linux VMs"
  value       = module.vmlinux-n01650117.vm_fqdns
}

output "linux_vm_private_ips" {
  description = "The private IP addresses of the VMs created by the vmlinux module"
  value       = module.vmlinux-n01650117.vm_private_ips
}

output "linux_vm_public_ips" {
  description = "The public IP addresses of the VMs created by the vmlinux module"
  value       = module.vmlinux-n01650117.vm_public_ips
}

output "windows_vm_hostnames" {
  description = "The hostnames of the Windows VMs created by the vmwindows module"
  value       = module.vmwindows-n01650117.vm_hostnames
}

output "windows_vm_domain_names" {
  description = "The domain names of the Windows VMs created by the vmwindows module"
  value       = module.vmwindows-n01650117.vm_domain_names
}

output "windows_vm_fqdn" {
  description = "The FQDN of the Windows VM"
  value       = module.vmwindows-n01650117.vm_fqdn
}

output "windows_vm_private_ips" {
  description = "The private IP addresses of the Windows VMs created by the vmwindows module"
  value       = module.vmwindows-n01650117.vm_private_ips
}

output "windows_vm_public_ips" {
  description = "The public IP addresses of the Windows VMs created by the vmwindows module"
  value       = module.vmwindows-n01650117.vm_public_ips
}

output "load_balancer_name" {
  description = "The name of the Load Balancer created by the loadbalancer module"
  value       = module.loadbalancer-n01650117.load_balancer_name
}

output "db_server_name" {
  description = "The name of the PostgreSQL server created by the database module"
  value       = module.database-n01650117.db_server_name
}

output "db_name" {
  description = "The name of the PostgreSQL database created by the database module"
  value       = module.database-n01650117.db_name
}



