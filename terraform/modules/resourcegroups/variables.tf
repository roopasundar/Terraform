variable "rgname" {
description = "name of the resource group"
type        = string
}

variable "rglocation" {
description = "name of the resource group location"
type        = string
}

variable "rgtags" {
  type        = map(string)
  description = "Tags for the resource group"
}