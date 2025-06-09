terraform {
  backend "s3" {
    bucket = "testingxperts-terraform-state"    # Change to a unique name
    key    = "s3-bucket/terraform.tfstate"
    region = "ap-south-1"
    
    # Enable encryption
    encrypt = true
    
    # Enable native locking (new feature)
    use_lockfile = true
  }
}