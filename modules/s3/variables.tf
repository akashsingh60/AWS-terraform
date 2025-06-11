variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
}

variable "tags" {
  description = "Tags to apply to the bucket"
  type        = map(string)
}

variable "object_lock_enabled" {
  description = "Enable object lock"
  type        = bool
  default     = false
}

variable "object_lock_mode" {
  description = "Object lock retention mode (e.g. COMPLIANCE or GOVERNANCE)"
  type        = string
  default     = "GOVERNANCE"
}

variable "object_lock_days" {
  description = "Retention days for object lock"
  type        = number
  default     = 30
}

variable "mfa_delete" {
  description = "Enable MFA delete on bucket"
  type        = bool
  default     = false
}
