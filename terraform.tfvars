bucket_name     = "testingxpertsbucket"
aws_region      = "ap-south-1"
tags = {
  "Owner"       = "TestingXperts"
  "Environment" = "dev"
  "CostCenter"  = "QA"
}
mfa_delete             = false
object_lock_enabled    = true
