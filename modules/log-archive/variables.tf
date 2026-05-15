variable "bucket_name" {
  type        = string
  description = "Base name for the S3 bucket"
}

variable "environment" {
  type        = string
  description = "Deployment environment"
}

variable "log_prefix" {
  type        = string
  default     = "logs/"
  description = "Prefix used by the lifecycle rule"
}

variable "lifecycle_ia_days" {
  type        = number
  default     = 30
  description = "Days for transitioning to infrequent access storage"
}

variable "lifecycle_glacier_days" {
  type        = number
  default     = 90
  description = "Days for transitioning to glacier storage"
}

variable "lifecycle_expire_days" {
  type        = number
  default     = 365
  description = "Days for expiring objects in the bucket"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Tags to apply to the S3 bucket"
}
