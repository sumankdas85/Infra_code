variable "resource_grp" {
  type = map(object(
    {
      name       = string
      location   = string
      managed_by = optional(string)
      tags       = optional(map(string))

    }
  ))
}

variable "public_ip" {
  type = map(object(
    {
      name                = string
      resource_group_name = string
      location            = string
      allocation_method   = string
    }
  ))
}

variable "vnet_prod" {
  type = map(object(
    {
      vnet_name           = string
      subnet_name         = string
      location            = string
      resource_group_name = string
      address_space       = list(string)
      # dns_servers          = list(string)
      address_prefixes = list(string)
      #   subnets = map(object({
      #   name             = string
      #   address_prefixes = list(string)
      # }))
    }
  ))
}

variable "nic_prod" {
  type = map(object({
    name                 = string
    subnet_name          = string
    location             = string
    resource_group_name  = string
    virtual_network_name = string
    ip_configuration = object({
      name                          = string
      private_ip_address_allocation = string

    })
  }))

}

variable "vms" {
  type = map(object(
    {
      location               = string
      rg_name                = string
      vnet_name              = string
      subnet_name            = string
      nic_name               = string
      pip_name               = string
      vm_name                = string
      size                   = string
      admin_username         = string
      admin_password         = string
      source_image_reference = map(string)

    }
  ))
}

# variable "kv" {
#   type = map(object({
#     kv_name    = string
#     rg_name    = string
#     location   = string
#     # vm_user    = string
#     # value_user = string
#     # vm_pwd     = string
#     # value_pwd  = string

#   }))

# }
