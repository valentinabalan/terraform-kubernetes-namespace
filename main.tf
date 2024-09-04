resource "kubernetes_namespace" "this1" {
  metadata {
    name = var.name
  }
}

resource "kubernetes_resource_quota" "pod" {
  metadata {
    name      = "pod-quota"
  }
  spec {
    hard = {
      pods = var.number_of_pods
    }
    scopes = ["BestEffort"]
  }
}



