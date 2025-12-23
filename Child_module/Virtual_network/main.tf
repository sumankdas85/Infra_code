resource "azurerm_virtual_network" "vnet" {
  for_each            = var.vnet_prod
  name                = each.value.vnet_name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  address_space       = each.value.address_space
  # dns_servers         = each.value.dns_servers

}


resource "azurerm_subnet" "subnet_frontend" {
depends_on = [ azurerm_virtual_network.vnet ]
  for_each = var.vnet_prod

  name                 = each.value.subnet_name
  resource_group_name  = each.value.resource_group_name
  virtual_network_name = each.value.vnet_name
  address_prefixes     = each.value.address_prefixes

 }
#   dynamic "subnet" {
#     for_each = each.value.subnets
#     content {
#       name             = subnet.value.name
#       address_prefixes = subnet.value.address_prefixes
#     }
#   }
# }
