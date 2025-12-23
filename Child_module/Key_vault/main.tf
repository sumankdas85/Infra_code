# data "azurerm_client_config" "current" {}

# resource "azurerm_key_vault" "key_vault" {
#   for_each                    = var.kv
#   name                        = each.value.kv_name
#   location                    = each.value.location
#   resource_group_name         = each.value.rg_name
#   enabled_for_disk_encryption = true
#   tenant_id                   = data.azurerm_client_config.current.tenant_id
#   soft_delete_retention_days  = 7
#   purge_protection_enabled    = false
#   sku_name = "standard"

#   access_policy {
#     tenant_id = data.azurerm_client_config.current.tenant_id
#     object_id = data.azurerm_client_config.current.object_id

#     key_permissions = [
#       "Get",
#     ]

#     secret_permissions = [
#       "Get","List", "Set", "Delete", "Recover", "Backup", "Restore", "Purge"]
    

#     storage_permissions = [
#       "Get",
#     ]
#   }
# }

# # resource "azurerm_key_vault_secret" "vm_username" {
# #   for_each = var.kv
# #   name         = each.value.vm_user
# #   value        = each.value.value_user
# #   key_vault_id = azurerm_key_vault.key_vault[each.key].id
# # }

# # resource "azurerm_key_vault_secret" "vm_password" {
# #   for_each = var.kv
# #   name         = each.value.vm_pwd
# #   value        = each.value.value_pwd
# #   key_vault_id = azurerm_key_vault.key_vault[each.key].id
# # }
