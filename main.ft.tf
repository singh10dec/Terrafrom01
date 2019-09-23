#Create Resource Group
resource "azurerm_resource_group" "test" {
  name     = "testResourceGroup1"
  location = "West US"

  tags = {
    environment = "Production"
  }
}
#Create Virtual net work
resource  "azurerm_virtual_network" "vnet"{

 name ="MyTFNet"
 address_space = ["10.0.0.0/16"]
 location  = "westus2"
 azurerm_resource_group = "${azurerm_resource_group.testResourceGroup1.name}"
}
