terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }
}

# Secure Authentication: 
# We DO NOT hardcode access keys here. Terraform will automatically 
# use the credentials configured in your AWS CLI / AWS SSO.
provider "aws" {
  region = var.aws_region
}