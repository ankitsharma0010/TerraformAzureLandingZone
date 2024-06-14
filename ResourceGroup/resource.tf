variable "ResourceGroup" {

}
resource "azurerm_resource_group" "RG" {
  for_each = var.ResourceGroup
  name     = each.value.name
  location = each.value.location
}