# ---------------------------------------------
# Terraform configuration
# ---------------------------------------------
terraform {
  required_version = ">=1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  backend "s3" {
    bucket  = "dntnbucket002"
    key     = "tasylog-dev.tfstate"
    region  = "ap-northeast-1"
    profile = "terraform"
  }
}

# ---------------------------------------------
# Provider
# ---------------------------------------------
provider "aws" {
  alias   = "tokyo"
  profile = "terraform"
  region  = "ap-northeast-1"
}

#provider "aws" {
#  alias   = "virginia"
#  profile = "terraform"
#  region  = "us-east-1"
#}
