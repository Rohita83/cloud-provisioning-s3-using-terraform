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

terraform {
  backend "s3" {
    bucket = "wo-test-bucket-1"
    key    = "PROJECT-COMPONENT-terraform.tfstate"
    region = "us-east-1"
  }
}

module "s3" {
  source = "./modules/aws/s3"
  bucket_name = var.bucket_name
  project_name = var.project_name
  management_name = var.management_name
}
