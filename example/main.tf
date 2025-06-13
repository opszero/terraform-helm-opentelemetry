provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

module "otl-collector" {
  source = "./../"

  enable_otel_collector = true
  name                  = "otl-collector"
  namespace             = "otl-collector"
  values_file           = "${path.module}/values.yaml"
}