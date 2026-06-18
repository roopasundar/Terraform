# =========================================
# Resource group details
# ===========================================

module "gpr_resource_group" {
    source   = "./modules/resourcegroups"
    rgname          =  var.gpr_rgname
    rglocation      =  var.gpr_rglocation
    rgtags          =  var.gpr_rgtags
}