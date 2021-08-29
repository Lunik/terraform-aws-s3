
variable "bucket_name" {
  type        = string
  description = "Name given to the AWS S3 Bucket who store website static files."
}

variable "bucket_acl" {
  type        = string
  description = "The canned ACL to apply to the bucket."
  default     = "private"
}

variable "bucket_versioning" {
  type        = bool
  description = "Enable versioning for file in the bucket."
  default     = true
}

variable "bucket_tags" {
  type        = map(string)
  description = "Map of tags attached to the S3 Bucket."
  default     = {}
}

variable "website_index_file_name" {
  type        = string
  description = "Default index file name of the website."
  default     = "index.html"
}

variable "website_error_file_name" {
  type        = string
  description = "Default error file name of the website."
  default     = "error.html"
}

variable "bucket_block_public_acls" {
  type        = bool
  description = "Whether Amazon S3 should block public ACLs for this bucket."
  default     = true
}

variable "bucket_block_public_policy" {
  type        = bool
  description = "Whether Amazon S3 should block public bucket policies for this bucket."
  default     = true
}

variable "bucket_ignore_public_acls" {
  type        = bool
  description = "Whether Amazon S3 should ignore public ACLs for this bucket."
  default     = true
}

variable "bucket_restrict_public_buckets" {
  type        = bool
  description = "Whether Amazon S3 should restrict public bucket policies for this bucket."
  default     = true
}

variable "bucket_policy" {
  type        = any
  description = "Policy to attach to S3 bucket resource."
}

##################
# DANGEROUS ZONE #
##################

variable "bucket_force_destroy" {
  type        = bool
  description = "A boolean that indicates all objects should be deleted from the bucket so that the bucket can be destroyed without error."
  default     = false
}