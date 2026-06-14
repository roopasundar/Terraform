output "rg_name"{
    description = "The name of the newly created resource group"
    value = azurerm_resource_group.rg.name
}

output "rg_location"{
    description = "The location of the newly created resource group"
    value = azurerm_resource_group.rg.location
}

output "rg_tags"{
    description = "The tags of the newly created resource group"
    value = azurerm_resource_group.rg.tags
}