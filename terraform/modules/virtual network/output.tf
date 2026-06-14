output "vnet_id"{
    description = "The id of the newly created vnet details"
    value = data.azurerm_virtual_network.existing_vnet.id
}

output "vnet_name"{
    description = "The name of the vnet details"
    value =  data.azurerm_virtual_network.existing_vnet.name
}