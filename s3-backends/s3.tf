# S3 Bucket for Terraform State File
resource "aws_s3_bucket" "terraform_state" {
  count         = length(var.tf_state_backend_buckets)
  bucket        = var.tf_state_backend_buckets[count.index]
  force_destroy = true
}

# Enable bucket versioning
resource "aws_s3_bucket_versioning" "terraform_bucket_versioning" {
  count  = length(aws_s3_bucket.terraform_state)
  bucket = aws_s3_bucket.terraform_state[count.index].id
  versioning_configuration {
    status = "Enabled"
  }
}

# Encrypt bucket data
resource "aws_s3_bucket_server_side_encryption_configuration" "terraform_state_crypto_conf" {
  count  = length(aws_s3_bucket.terraform_state)
  bucket = aws_s3_bucket.terraform_state[count.index].bucket
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}