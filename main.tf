terraform {
  backend "s3" {
    bucket = "arn:aws:s3:::terraform-smaar"
    key="10-s3-state/terraform.tfstate"
    region = "us-east-1"

  }
}

