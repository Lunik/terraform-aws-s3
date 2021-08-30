
resource "aws_s3_bucket" "www_site_static" {
  bucket = var.bucket_name

  acl = var.bucket_acl

  versioning {
    enabled = var.bucket_versioning
  }

  website {
    index_document = var.website_index_file_name
    error_document = var.website_error_file_name
  }

  tags = var.bucket_tags

  force_destroy = var.bucket_force_destroy
}
