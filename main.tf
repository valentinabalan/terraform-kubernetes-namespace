resource "kubernetes_namespace" "this1" {
  metadata {
    name = var.name
    labels = var.labels
    }
  }


resource "kubernetes_resource_quota" "pod" {
  metadata {
    name      = "pod-quota"
    namespace = kubernetes_namespace.this1.metadata.0.name

  }
  spec {
    hard = {
      pods = var.number_of_pods
    }
    scopes = ["BestEffort"]
  }
}







