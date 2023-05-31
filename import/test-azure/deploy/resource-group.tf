resource "random_pet" "aks_name" {
  prefix = var.aks_name_prefix
}

resource "azurerm_resource_group" "rg" {
  location = var.aks_location
  name     = random_pet.aks_name.id
}