data "azurerm_subnet" "SubnetId" {
  name                 = "AnkuSubnet"
  virtual_network_name = "AnkuVnet"
  resource_group_name  = "AnkuRG"
}
data "azurerm_key_vault" "keyvault" {
  name                = "AnkuKeyVault"
  resource_group_name = "AnkuRG"
}

data "azurerm_key_vault_secret" "username" {
  name         = "Username"
  key_vault_id = data.azurerm_key_vault.keyvault.id
}
data "azurerm_key_vault_secret" "password" {
  name         = "Password"
  key_vault_id = data.azurerm_key_vault.keyvault.id
}