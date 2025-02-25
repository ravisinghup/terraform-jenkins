terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  access_key = var.aws-access-key-id
  secret_key = var.aws-secret-access-key
  region     = var.aws_region
}
