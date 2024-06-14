module "ResourceGroup" {
  source        = "../../ResourceGroup"
  ResourceGroup = var.ResourceGroup
}
module "Vnet" {
  source     = "../../Vnet"
  Vnet       = var.Vnet
  depends_on = [module.ResourceGroup]
}
module "Subnet" {
  source     = "../../Subnet"
  Subnet     = var.Subnet
  depends_on = [module.Vnet]
}
module "KeyVault" {
  source     = "../../KeyVault"
  KeyVault   = var.KeyVault
  depends_on = [module.Subnet]
}