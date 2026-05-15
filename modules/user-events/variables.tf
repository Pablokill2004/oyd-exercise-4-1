variable "table_name" {
  type        = string
  description = "Name of the DynamoDB table"
}
variable "environment" {
  type        = string
  description = "Environment for the DynamoDB table "
}
variable "billing_mode" {
  type        = string
  default     = "PAY_PER_REQUEST"
  description = "Billing mode for the DynamoDB table (e.g., PROVISIONED, PAY_PER_REQUEST)"
}
// Use user_id (type String) as the hash key and created_at (type String) as the range key.
variable "user_id" {
  type        = string
  description = "Name of the hash key attribute (user_id)"
  default     = "user_id"
}

variable "created_at" {
  type        = string
  description = "Name of the range key attribute (created_at)"
  default     = "created_at"
}

variable "ttl_attribute" {
  type        = string
  default     = "expires_at"
  description = "Name of the attribute used for Time To Live (TTL) in the DynamoDB table"
}
variable "tags" {
  type        = map(string)
  default     = {}
  description = "Tags to apply to the DynamoDB table"
}