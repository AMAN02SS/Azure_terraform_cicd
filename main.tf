module "resource_group" {
  source              = "./modules/resource_group"
  resource_group_name = var.rg_name
  location            = var.rg_location
  tags                = var.tags
}
