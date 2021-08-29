
output "bucket" {
  description = "Bucket terraform object."
  value       = aws_s3_bucket.www_site_static
}