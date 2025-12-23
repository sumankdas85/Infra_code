# data "azurerm_key_vault" "kv" {
#   for_each            = var.vms
#   name                = each.value.kv_name
#   resource_group_name = each.value.rg_name
# }

# data "azurerm_key_vault_secret" "vm_username" {
#   for_each     = var.vms
#   name         = "vm-username"
#   key_vault_id = data.azurerm_key_vault.kv[each.key].id
# }

# data "azurerm_key_vault_secret" "vm_password" {
#   for_each     = var.vms
#   name         = "vm-password"
#   key_vault_id = data.azurerm_key_vault.kv[each.key].id
# }

data "azurerm_network_interface" "nic_vm"{
  for_each = var.vms
  name                = each.value.nic_name
  resource_group_name = each.value.rg_name
}

# output "network_interface_id" {
#   value = data.azurerm_network_interface.nic_vm[each.key]
# }