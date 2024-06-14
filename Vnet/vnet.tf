variable "Vnet" {

}
resource "azurerm_virtual_network" "Vnet" {
  for_each            = var.Vnet
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  address_space       = each.value.address_space
}
