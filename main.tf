resource "kubernetes_namespace" "this1" {
  metadata {
    name = var.name
  }
}

