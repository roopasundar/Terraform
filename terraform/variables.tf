# Resource group input varibale declaration
# ========================================

variable "gpr_rgname" {
description = "name of the resource group"
type        = string
default     = " "
}

variable "gpr_rglocation" {
description = "name of the resource group location"
type        = string
default     = ""
}

variable "gpr_rgtags" {
    type        = map(string)
    description = "Tags for the resource group"
    default = {

    }
}