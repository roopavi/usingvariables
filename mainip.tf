resource "azurerm_resource_group" "pips" {
  name     = var.rgname
  location = var.locate
}

resource "azurerm_public_ip" "example" {
  name                = var.ipname
  resource_group_name = azurerm_resource_group.pips.name
  sku                 = var.sku
  location            = azurerm_resource_group.pips.location
  allocation_method   = var.assignment
  ip_version          = var.ipv4version

  tags = var.tag
}
