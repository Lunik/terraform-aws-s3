
resource "aws_s3_bucket_policy" "www_site_static" {
  bucket = aws_s3_bucket.www_site_static.id

  policy = jsonencode(var.bucket_policy)
}