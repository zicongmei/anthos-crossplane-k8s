

resource "azurerm_kubernetes_cluster" "default" {
  name                = random_pet.aks_name.id
  location            = var.aks_location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "${random_pet.aks_name.id}-k8s"

  default_node_pool {
    name            = "default"
    node_count      = 2
    vm_size         = "Standard_B2s"
    os_disk_size_gb = 30
  }

  identity {
    type = "SystemAssigned"
  }

  kubernetes_version = "1.24"

  workload_identity_enabled = true
  oidc_issuer_enabled = true
  role_based_access_control_enabled = true

  tags = {
    environment = "Demo"
    user = "zicong"
  }
}
