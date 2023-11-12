# Dynamo DB Table for Locking Terraform Configuration
resource "aws_dynamodb_table" "terraform_locks" {
  count        = length(var.tf_state_locks)
  name         = var.tf_state_locks[count.index]
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
}