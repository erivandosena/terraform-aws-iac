# https://developer.hashicorp.com/terraform/language/syntax/configuration
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs
# https://developer.hashicorp.com/terraform/language/providers/configuration#alias-multiple-provider-configurations

provider "aws" {
  region  = "us-east-1"
}

# Multi-Region
provider "aws" {
  alias  = "ohio"
  region = "us-east-2"
}

terraform {
  backend "s3" {
    bucket = "terraform-state-bucket-erivandosena"
    key    = "terraform-erivando-test.tfstate"
    region = "us-east-1"
    encrypt = false
  }
}
