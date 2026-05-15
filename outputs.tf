output "archive_bucket_name" {
  value       = module.archive_module.bucket_name
  description = "S3 archive bucket name from log-archive module"
}

output "archive_bucket_arn" {
  value       = module.archive_module.bucket_arn
  description = "S3 archive bucket ARN from log-archive module"
}

output "user_events_table_name" {
  value       = module.user_events.table_name
  description = "DynamoDB table name from user-events module"
}

output "user_events_table_arn" {
  value       = module.user_events.table_arn
  description = "DynamoDB table ARN from user-events module"
}
