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
  access_key = "AKIA2KYBA57NKJYMHCGA"
  secret_key = "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"
}