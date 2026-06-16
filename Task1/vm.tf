resource "azurerm_linux_virtual_machine" "app_vm" {

  name                = "app-machine"
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location

  size = "Standard_B2ms"

  admin_username = "azureuser"

  network_interface_ids = [
    azurerm_network_interface.app_nic.id
  ]

  admin_ssh_key {
    username   = "azureuser"
    public_key = file("C:/Users/ANURAG J NAIK/.ssh/capstone-key.pub")
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts-gen2"
    version   = "latest"
  }
}

resource "azurerm_linux_virtual_machine" "tools_vm" {

  name                = "tools-machine"
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location

  size = "Standard_B2ms"

  admin_username = "azureuser"

  network_interface_ids = [
    azurerm_network_interface.tools_nic.id
  ]

  admin_ssh_key {
    username   = "azureuser"
    public_key = file("C:/Users/ANURAG J NAIK/.ssh/capstone-key.pub")
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts-gen2"
    version   = "latest"
  }
}
