module "archive_module" {
  source = "./modules/log-archive"

  bucket_name            = "archive-module-${var.environment}"
  environment            = var.environment
  lifecycle_ia_days      = 30
  lifecycle_glacier_days = 90
  lifecycle_expire_days  = 365
}
module "user_events" {
  source = "./modules/user-events"

  table_name    = "user-events-${var.environment}"
  environment   = var.environment
  billing_mode  = "PAY_PER_REQUEST"
  ttl_attribute = "expires_at"

  tags = {
    Service = "event-collector"
  }
}