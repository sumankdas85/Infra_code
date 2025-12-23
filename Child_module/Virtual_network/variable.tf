variable "vnet_prod" {
  type = map(object(
    {
      vnet_name           = string
      subnet_name         = string
      location            = string
      resource_group_name = string
      address_space       = list(string)
      # dns_servers         = list(string)
      address_prefixes    = list(string)
      #   subnets = map(object({
      #   name             = string
      #   address_prefixes = list(string)
      # }))
    }
  ))
}
