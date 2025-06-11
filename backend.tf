terraform {
  backend "s3" {
    bucket = "testingxperts-terraform-state"
    key    = "s3-bucket/terraform.tfstate"
    region = "ap-south-1"
    encrypt = true
  }
}
