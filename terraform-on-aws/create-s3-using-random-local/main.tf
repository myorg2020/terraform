resource "aws_s3_bucket" "finance-bucket" {
  bucket = local.bucket-prefix
  tags = {
    name = tf-bucket
  }
}

resource "random_string" "random-suffix" {
  length  = 6
  special = false
  upper   = false
}
