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
