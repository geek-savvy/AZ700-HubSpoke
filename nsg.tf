# -------------------------
# Production NSG
# -------------------------
resource "azurerm_network_security_group" "prod_nsg" {
  name                = "Prod-NSG"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_subnet_network_security_group_association" "prod_assoc" {
  subnet_id                 = azurerm_subnet.prod_app.id
  network_security_group_id = azurerm_network_security_group.prod_nsg.id
}

# -------------------------
# Development NSG
# -------------------------
resource "azurerm_network_security_group" "dev_nsg" {
  name                = "Dev-NSG"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_subnet_network_security_group_association" "dev_assoc" {
  subnet_id                 = azurerm_subnet.dev_app.id
  network_security_group_id = azurerm_network_security_group.dev_nsg.id
}

# -------------------------
# Shared Services NSG
# -------------------------
resource "azurerm_network_security_group" "shared_nsg" {
  name                = "Shared-NSG"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_subnet_network_security_group_association" "shared_assoc" {
  subnet_id                 = azurerm_subnet.shared.id
  network_security_group_id = azurerm_network_security_group.shared_nsg.id
}