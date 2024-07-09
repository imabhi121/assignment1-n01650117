resource "azurerm_resource_group" "n01650117-RG" {
  name     = "${var.humber_id}-RG"
  location = var.location
  tags = var.common_tags
}
