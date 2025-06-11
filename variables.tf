variable "bucket_name" {
  type = string
}

variable "aws_region" {
  description = "AWS region."
  type        = string
}

variable "tags" {
  type = map(string)
}

variable "object_lock_enabled" {
  type    = bool
  default = false
}

variable "object_lock_mode" {
  type    = string
  default = "GOVERNANCE"
}

variable "object_lock_days" {
  type    = number
  default = 30
}

variable "mfa_delete" {
  type    = bool
  default = false
}
