variable "region" {
  type        = string
  description = "AWS region to deploy into"
  default     = "us-west-2"
}

variable "environment" {
  type        = string
  description = "Deployment environment (dev / prod)"
}