variable "bucket_name" {
  description = "Name of the S3 bucket."
  type        = string
}

variable "aws_region" {
  description = "AWS region."
  type        = string
}

variable "tags" {
  description = "Tags for the S3 bucket."
  type        = map(string)
}

variable "mfa_delete" {
  description = "Enable MFA delete."
  type        = bool
  default     = false
}

variable "object_lock_enabled" {
  description = "Enable object lock for the bucket."
  type        = bool
  default     = true
}

variable "object_lock_mode" {
  description = "The default object lock retention mode (GOVERNANCE or COMPLIANCE)"
  type        = string
  default     = "GOVERNANCE"
}

variable "object_lock_days" {
  description = "The number of days to retain objects with object lock."
  type        = number
  default     = 1
}

