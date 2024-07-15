locals {
  bucket-prefix = "${var.project}-${random_string.random-suffix.id}-bucket"
}
