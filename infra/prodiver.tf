terraform {
  required_providers {
    aws = {
      source  = hashicorpaws
      version = ~ 5.0
    }
  }
}
provider aws {
  region = var.region
}
