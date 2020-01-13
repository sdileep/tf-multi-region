resource "aws_s3_bucket" "terraform_state_storage" {
    acl = "private"
    bucket = var.bucket
    server_side_encryption_configuration {
      rule {
        apply_server_side_encryption_by_default {
          sse_algorithm     = "aws:kms"
        }
      }
    }
    versioning {
      enabled = true
    }
}

resource "aws_s3_bucket_public_access_block" "terraform_state_storage" {
  bucket = "${aws_s3_bucket.terraform_state_storage.id}"

  block_public_acls   = true
  block_public_policy = true
  ignore_public_acls = true
  restrict_public_buckets = true
}