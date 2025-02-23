output "cluster_name" {
  description = "The name of the GKE cluster"
  value       = google_container_cluster.gke_cluster.name
}

output "cluster_endpoint" {
  description = "The endpoint of the GKE cluster"
  value       = google_container_cluster.gke_cluster.endpoint
}

output "node_pool_name" {
  description = "The name of the GKE node pool"
  value       = google_container_node_pool.primary_nodes.name
}

output "region" {
  description = "The region where resources are deployed"
  value       = var.region
}
