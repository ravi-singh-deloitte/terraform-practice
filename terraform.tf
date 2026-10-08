terraform {
  required_version = "1.16.5"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.68.0"
    }
  }

  # Backend values are supplied per environment at init time:
  #   terraform init -backend-config=backend-dev.hcl
  #   terraform init -backend-config=backend-prod.hcl
  backend "s3" {}
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

