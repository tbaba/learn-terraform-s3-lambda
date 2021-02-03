terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 2.7.0"
    }
  }

  backend "s3" {
    bucket = "learn-terraform-s3-lambda"
    key    = "state/service"
    region = "ap-northeast-1"
  }
}

provider "aws" {
  profile = "tbaba"
  region  = var.region
}

