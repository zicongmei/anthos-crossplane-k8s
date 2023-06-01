
output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "kubernetes_cluster_name" {
  value = azurerm_kubernetes_cluster.default.name
}

output "kubernetes_nodepool_name" {
  value = azurerm_kubernetes_cluster_node_pool.nodepool1.name
}

