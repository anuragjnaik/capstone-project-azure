output "app_vm_public_ip" {
  value = azurerm_public_ip.app_ip.ip_address
}

output "tools_vm_public_ip" {
  value = azurerm_public_ip.tools_ip.ip_address
}
