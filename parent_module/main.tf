module "rg" {
  source = "../child_module/resource_group"
  rg     = var.rg
}

module "vnet" {
  depends_on = [module.rg]
  source     = "../child_module/virtual_network"
  vnet       = var.vnet
}

module "snet" {
  depends_on = [module.vnet]
  source     = "../child_module/subnet"
  snet       = var.snet
}