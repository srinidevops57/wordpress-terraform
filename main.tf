terraform {
  backend "s3" {
    bucket = ""
    key="10-s3-state/terraform.tfstate"
    region = "us-east-1"

  }
}

