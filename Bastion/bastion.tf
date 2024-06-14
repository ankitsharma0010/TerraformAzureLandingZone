variable "BastionHost" {
  
}
resource "azurerm_public_ip" "PublicIP" {
    for_each = var.BastionHost
  name                = each.value.publicipname
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  allocation_method   = "Static"
  sku                 = "Standard"
}

resource "azurerm_bastion_host" "BastionHost" {
    for_each = var.BastionHost
  name                = each.value.BastionName
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  ip_configuration {
    name                 = "configuration"
    subnet_id            = data.azurerm_subnet.BastionSubnet.id
    public_ip_address_id = azurerm_public_ip.PublicIP[each.key].id
  }
}