variable "vms" {
  type = map(object(
    {

      location               = string
      nic_name               = string
      rg_name                = string
      vnet_name              = string
      subnet_name            = string
      pip_name               = string
      vm_name                = string
      size                   = string
      admin_username         = string
      admin_password         = string
      source_image_reference = map(string)
      
    }
  ))
}
