provider "kubernetes" {
  config_path = "~/.kube/config"
}

resource "kubernetes_manifest" "faas_function" {
  manifest = yamldecode(file("${path.module}/function.yml"))
}