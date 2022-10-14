terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

module "s3" {
  source = "./modules/aws/s3"
  bucket_name = var.bucket_name
  project_name = var.project_name
  management_name = var.management_name
}
