provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

module "otel-collector" {
  source = "./../"

  enable_otel_collector = true
  name                  = "otel-collector"
  namespace             = "otel-collector"
  values_file           = "${path.module}/values.yaml"
}