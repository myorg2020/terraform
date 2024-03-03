terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.39.0"
    }
  }
}

provider "aws" {
  region     = "ap-south-1"
  access_key = "XXXX"
  secret_key = "XXXX"
}
