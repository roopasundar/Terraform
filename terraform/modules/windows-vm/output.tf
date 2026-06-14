output "vm_id"{
    description = "The name of the newly created vm id details"
    value = azurerm_windows_virtual_machine.vm.name
}