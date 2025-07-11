

resource "azurerm_virtual_network" "my-vnet" {
  name = var.vnet_name
  location = var.location
  address_space = [var.vnet_address_space]
  resource_group_name = var.resource_group_name
}

resource "azurerm_subnet" "subnet" {
  for_each = var.subnet_address_name_mapping

  name = each.key
  resource_group_name = var.resource_group_name
  address_prefixes = [each.value]
  virtual_network_name = azurerm_virtual_network.my-vnet.name
}