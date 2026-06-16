resource "azurerm_public_ip" "app_ip" {

  name = "app-public-ip"

  location = azurerm_resource_group.main.location

  resource_group_name = azurerm_resource_group.main.name

  allocation_method = "Static"
}

resource "azurerm_public_ip" "tools_ip" {

  name = "tools-public-ip"

  location = azurerm_resource_group.main.location

  resource_group_name = azurerm_resource_group.main.name

  allocation_method = "Static"
}
