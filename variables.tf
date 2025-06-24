variable "enable_otel_collector" {
  description = "Enable or disable otel_collector deployment"
  type        = bool
  default     = true
}

variable "name" {
  type    = string
  default = "otl-collector"
}

variable "namespace" {
  type    = string
  default = "otl-collector"
}

variable "values_file" {
  description = "Path to the values.yaml file"
  type        = string
}