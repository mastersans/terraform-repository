terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket = "sanskar-terraform-statebackend"
    key    = "terraform-repository/terraform.tfstate"
    region = "us-west-1"
  }
}

provider "aws" {
  region = var.aws_region
}
