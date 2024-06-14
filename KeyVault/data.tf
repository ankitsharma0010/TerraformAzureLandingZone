data "azurerm_client_config" "current" {
}

output "account_id" {
  value = data.azurerm_client_config.current.client_id
}
data "azuread_user" "objectid" {
  user_principal_name = "akshay@pksaws0908gmail.onmicrosoft.com"
}

output "user_object_id" {
  value = data.azuread_user.objectid.object_id
}