terraform {
  required_version = ">= 1.5.0"

  backend "local" {
    path = "terraform.tfstate"
  }
}

module "app_config" {
  source = "github.com/Lexxick/infra-modules//modules/app-config?ref=v1.0.0"

  environment   = var.environment
  app_version   = var.app_version
  replica_count = var.replica_count
  feature_flags = var.feature_flags
  output_dir    = "${path.module}/output"
}