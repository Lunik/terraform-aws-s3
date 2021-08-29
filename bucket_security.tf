
resource "aws_s3_bucket_public_access_block" "www_site_static" {
  bucket = aws_s3_bucket.www_site_static.id

  block_public_acls       = var.bucket_block_public_acls
  block_public_policy     = var.bucket_block_public_policy
  ignore_public_acls      = var.bucket_ignore_public_acls
  restrict_public_buckets = var.bucket_restrict_public_buckets
}