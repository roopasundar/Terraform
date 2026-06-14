# =========================================
# Resource group details
# ===========================================

module "gpr_resource_group" {
    source   = "./modules/resourcegroups"
    rgname          =  var.rg_name
    rglocation      =  var.rg_location
    rgtags          =  var.rg_tags
}