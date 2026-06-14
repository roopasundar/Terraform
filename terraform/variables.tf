# Resource group input varibale declaration
# ========================================

variable "rg_name" {
description = "name of the resource group"
type        = string
default     = " "
}

variable "rg_location" {
description = "name of the resource group location"
type        = string
default     = ""
}

variable "rg_tags" {
    type        = map(string)
    description = "Tags for the resource group"
    default = {

    }
}