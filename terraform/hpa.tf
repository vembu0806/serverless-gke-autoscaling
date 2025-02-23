resource "kubernetes_horizontal_pod_autoscaler" "hpa" {
  metadata {
    name      = "knative-hpa"
    namespace = "default"
  }

  spec {
    max_replicas = 4
    min_replicas = 1

    scale_target_ref {
      kind = "Deployment"
      name = "knative-service"
      api_version = "apps/v1"
    }

    target_cpu_utilization_percentage = 80
  }
}
