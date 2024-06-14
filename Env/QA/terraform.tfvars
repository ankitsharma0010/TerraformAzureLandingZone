ResourceGroup = {
  RG1 = {
    name     = "AnkuRG"
    location = "canadaeast"
  }
}
Vnet = {
  Vnet1 = {
    name                = "AnkuVnet"
    location            = "canadaeast"
    resource_group_name = "AnkuRG"
    address_space       = ["10.0.0.0/16"]
  }
}
Subnet = {
  subnet1 = {
    name                 = "AnkuSubnet"
    resource_group_name  = "AnkuRG"
    virtual_network_name = "AnkuVnet"
    address_prefixes     = ["10.0.1.0/24"]
  }
  subnet2 = {
    name                 = "AzureBastionSubnet"
    resource_group_name  = "AnkuRG"
    virtual_network_name = "AnkuVnet"
    address_prefixes     = ["10.0.2.0/24"]
  }
}
KeyVault = {
  keyVault = {
    name                = "AnkuKeyVault"
    location            = "canadaeast"
    resource_group_name = "AnkuRG"
  }
}
