# Added this comment
provider "aws" {
    region = "us-east-1"
}

resource "aws_s3_bucket" "s3-billing-03" {
    bucket = "terraform-s3-billing-03"
    tags = {
        creator = "jpummill"
        purpose = "Terraform testing"
    }
}
