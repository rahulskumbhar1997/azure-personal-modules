

output "vnet_name" {
  value = azurerm_virtual_network.my-vnet.name
}

output "subnet_name" {
  value = azurerm_subnet.subnet.name
}