terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = var.region
}

module "prj19" {
  source  = "app.terraform.io/ATech/prj19/aws"
  version = "1.0.0"
  name    = var.name
  prefix  = var.prefix
  region  = var.region
}
