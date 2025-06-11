module "main_bucket" {
  source               = "./modules/s3"
  bucket_name          = var.bucket_name
  tags                 = var.tags
  object_lock_enabled  = var.object_lock_enabled
  object_lock_mode     = var.object_lock_mode
  object_lock_days     = var.object_lock_days
  mfa_delete           = var.mfa_delete
}
module "mains_bucket" {
  source               = "./modules/s3"
  bucket_name          = tx
  tags                 = var.tags
  object_lock_enabled  = var.object_lock_enabled
  object_lock_mode     = var.object_lock_mode
  object_lock_days     = var.object_lock_days
  mfa_delete           = var.mfa_delete
}