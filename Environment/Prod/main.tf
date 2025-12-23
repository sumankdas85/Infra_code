module "Prod_rg" {
  source       = "../../Child_module/resource_grp"
  resource_grp = var.resource_grp

}

module "public_ip" {
  depends_on = [module.Prod_rg]
  source     = "../../Child_module/Public_IP"
  public_ip  = var.public_ip

}

module "virtual_network" {
  depends_on = [module.Prod_rg]
  source     = "../../Child_module/Virtual_network"
  vnet_prod  = var.vnet_prod

}

module "nic" {
  depends_on = [module.Prod_rg, module.public_ip, module.virtual_network]
  source     = "../../Child_module/NIC"
  nic_prod   = var.nic_prod

}

module "virtual_machine" {
  depends_on = [module.Prod_rg, module.nic, module.public_ip, module.virtual_network]
  source     = "../../Child_module/Virtual_machine"
  vms        = var.vms

}

# module "keyvault" {
#   depends_on = [module.Prod_rg]
#   source     = "../../Child_module/Key_vault"
#   kv         = var.kv
# }
