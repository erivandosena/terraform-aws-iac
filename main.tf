# https://developer.hashicorp.com/terraform/language/syntax/configuration

provider "aws" {
  region  = "us-east-1"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 2.0"
    }
  }

  backend "s3" {
    bucket = "terraform-state-bucket-erivandosena"
    key    = "terraform-erivando-test.tfstate"
    region = "us-east-1"
  }
}
