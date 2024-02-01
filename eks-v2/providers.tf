terraform {
  required_version = ">=0.13.1"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=5.34.0"
    }
    local = {
      source  = "hashicorp/local"
      version = ">=2.4.1"
    }
  }
  backend "s3" {
    bucket = "jbtech-terraform-state-bucket"
    key    = "eks-v2/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}
