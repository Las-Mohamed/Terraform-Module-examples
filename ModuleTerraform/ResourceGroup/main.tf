resource "azurerm_resource_group" "monRG" {
  name = "${var.base_name}RG"
  location = var.location
}