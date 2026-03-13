variable "environment" {
  type = string
}

variable "app_version" {
  type = string
}

variable "replica_count" {
  type = number
}

variable "feature_flags" {
  type    = map(bool)
  default = {}
}