resource "azurerm_virtual_network_peering" "hub_to_prod" {
  name                      = "Hub-to-Prod"
  resource_group_name       = azurerm_resource_group.rg.name
  virtual_network_name      = azurerm_virtual_network.hub.name
  remote_virtual_network_id = azurerm_virtual_network.prod.id

  allow_virtual_network_access = true
}
resource "azurerm_virtual_network_peering" "prod_to_hub" {
  name                      = "Prod-to-Hub"
  resource_group_name       = azurerm_resource_group.rg.name
  virtual_network_name      = azurerm_virtual_network.prod.name
  remote_virtual_network_id = azurerm_virtual_network.hub.id

  allow_virtual_network_access = true
}
resource "azurerm_virtual_network_peering" "hub_to_dev" {
  name                      = "Hub-to-Dev"
  resource_group_name       = azurerm_resource_group.rg.name
  virtual_network_name      = azurerm_virtual_network.hub.name
  remote_virtual_network_id = azurerm_virtual_network.dev.id

  allow_virtual_network_access = true
}
resource "azurerm_virtual_network_peering" "dev_to_hub" {
  name                      = "Dev-to-Hub"
  resource_group_name       = azurerm_resource_group.rg.name
  virtual_network_name      = azurerm_virtual_network.dev.name
  remote_virtual_network_id = azurerm_virtual_network.hub.id

  allow_virtual_network_access = true
}
