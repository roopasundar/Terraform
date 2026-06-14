output "subnet_id"{
    description = "The id of the subnet details"
    value = data.azurerm_subnet.existing_subnet.id
}