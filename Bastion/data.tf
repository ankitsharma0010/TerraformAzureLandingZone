data "azurerm_subnet" "BastionSubnet" {
  name                 = "AzureBastionSubnet"
  virtual_network_name = "AnkuVnet"
  resource_group_name  = "AnkuRG"
}