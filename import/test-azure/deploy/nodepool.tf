resource "azurerm_kubernetes_cluster_node_pool" "nodepool1" {
  name                  = "np1"
  kubernetes_cluster_id = azurerm_kubernetes_cluster.default.id
  vm_size               = "Standard_DS2_v2"
  node_count            = 1

  tags = {
    environment = "Demo"
    user = "zicong"
  }
}