resource "helm_release" "otel_collector" {
  count            = var.enable_otel_collector ? 1 : 0
  name             = var.name
  chart            = "opentelemetry-collector"
  repository       = "https://open-telemetry.github.io/opentelemetry-helm-charts"
  namespace        = var.namespace
  create_namespace = true

  values = [file(var.values_file)]

}