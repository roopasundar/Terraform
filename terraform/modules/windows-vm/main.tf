# resource "azurerm_public_ip" "example" {
#   name                = "myPublicIP"
#   location            = azurerm_resource_group.example.location
#   resource_group_name = azurerm_resource_group.example.name
#   allocation_method   = "Dynamic"
# }


resource "azurerm_network_interface" "vm_nic" {
  name                = "${var.vm-name}-nic"
  location            = var.rglocation
  resource_group_name = var.rgname

  ip_configuration {
    name                          = "internal"
    subnet_id                     = var.subnet-id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_windows_virtual_machine" "vm" {
  name                = var.vm-name
  resource_group_name = var.rgname
  location            = var.rglocation
  size                = "Standard_D2s_v3"
  admin_username      = var.adminuser
  admin_password      = var.adminpwd
  network_interface_ids = [azurerm_network_interface.vm_nic.id]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type =  "Standard_LRS"  # "Premium_LRS" # Diks S4
  }

  # source_image_reference {
  #   publisher = "MicrosoftWindowsServer"
  #   offer     = "WindowsServer"
  #   sku       = "2019-Datacenter"
  #   version   = "latest"
  # }

  #secure_boot_enabled  = true   # ✅ Enables Secure Boot (Required for Gen2)**
  #vm_generation        = "Gen2"

  source_image_reference {
  publisher = "MicrosoftWindowsDesktop"
  offer     = "windows-10"
  sku       = "win10-21h2-ent"
  version   = "latest"
}
}

resource "azurerm_network_security_group" "nsg" {
  name                = var.nsg-name
  location            = var.rglocation
  resource_group_name = var.rgname

  security_rule {
    name                       = "AllowRDP"
    priority                   = 1000
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "3389"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}


resource "azurerm_network_interface_security_group_association" "sg-association" {
  network_interface_id      = azurerm_network_interface.vm_nic.id
  network_security_group_id = azurerm_network_security_group.nsg.id
}
