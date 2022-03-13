# Added this comment
provider "aws" {
    region = "us-east-1"
}

resource "aws_s3_bucket" "s3-billing-03" {
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
    bucket = "terraform-s3-billing-03"
    tags = {
        creator = "jpummill"
        purpose = "Terraform testing"
    }
}
