resource "aws_dynamodb_table" "this" {
  name         = var.table_name
  billing_mode = var.billing_mode
  hash_key     = var.user_id
  range_key    = var.created_at


  attribute {
    name = "created_at"
    type = "S"
  }
  attribute {
    name = "user_id"
    type = "S"
  }
  attribute {
    name = "order_status"
    type = "S"
  }

  global_secondary_index {
    name            = "order-status-index"
    projection_type = "ALL"
    hash_key        = "order_status"
    range_key       = "created_at"
  }

  ttl {
    attribute_name = var.ttl_attribute
    enabled        = true
  }

  server_side_encryption {
    enabled = true
  }

  tags = merge(var.tags, { Environment = var.environment })
}