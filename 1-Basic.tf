# main tf filec
provider azurerm{
  features {
    
  }
}

resource "azurerm_resource_group" "dcc" {
  name     = "dcc-rg"
  location = "East US"
}

resource "azurerm_virtual_network" "dcc" {
  name                = "dcc-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.dcc.location
  resource_group_name = azurerm_resource_group.dcc.name
}

resource "azurerm_subnet" "dcc" {
  name                 = "dcc-subnet"
  resource_group_name  = azurerm_resource_group.dcc.name
  virtual_network_name = azurerm_virtual_network.dcc.name
  address_prefixes     = ["10.0.1.0/24"]
}
