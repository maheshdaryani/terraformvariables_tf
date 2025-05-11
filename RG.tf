# resource "azurerm_resource_group" "rg-mahesh" {
#   name     = var.rg_name
#   location = var.rg_location
# }
# resource "azurerm_resource_group" "rg-mahesh09" {
#   name     = "mahesh19"
#   location = "East US"
# }
resource "azurerm_resource_group" "rgs" {
  for_each = var.Var1 
   name    = each.value.name
  location = each.value.location
}
