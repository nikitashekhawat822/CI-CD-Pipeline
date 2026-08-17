rg = {
  rg = {
    name     = "rg-nikita"
    location = "westus"
  }
}

vnet = {
  vnet = {
    name                = "prod-vnet"
    location            = "westus"
    resource_group_name = "rg-nikita"
    address_space       = ["10.0.0.0/16"]
  }
}

snet = {
  snet = {
    name                 = "prod-snet"
    resource_group_name  = "rg-nikita"
    virtual_network_name = "prod-vnet"
    address_prefixes     = ["10.0.1.0/24"]

  }
  snet1 = {
    name                 = "prod-snet1"
    resource_group_name  = "rg-nikita"
    virtual_network_name = "prod-vnet"
    address_prefixes     = ["10.0.2.0/24"]
  }
}