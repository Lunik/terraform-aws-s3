## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 3.56 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 3.56 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_s3_bucket.www_site_static](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket_policy.www_site_static](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_policy) | resource |
| [aws_s3_bucket_public_access_block.www_site_static](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_public_access_block) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bucket_acl"></a> [bucket\_acl](#input\_bucket\_acl) | The canned ACL to apply to the bucket. | `string` | `"private"` | no |
| <a name="input_bucket_block_public_acls"></a> [bucket\_block\_public\_acls](#input\_bucket\_block\_public\_acls) | Whether Amazon S3 should block public ACLs for this bucket. | `bool` | `true` | no |
| <a name="input_bucket_block_public_policy"></a> [bucket\_block\_public\_policy](#input\_bucket\_block\_public\_policy) | Whether Amazon S3 should block public bucket policies for this bucket. | `bool` | `true` | no |
| <a name="input_bucket_force_destroy"></a> [bucket\_force\_destroy](#input\_bucket\_force\_destroy) | A boolean that indicates all objects should be deleted from the bucket so that the bucket can be destroyed without error. | `bool` | `false` | no |
| <a name="input_bucket_ignore_public_acls"></a> [bucket\_ignore\_public\_acls](#input\_bucket\_ignore\_public\_acls) | Whether Amazon S3 should ignore public ACLs for this bucket. | `bool` | `true` | no |
| <a name="input_bucket_name"></a> [bucket\_name](#input\_bucket\_name) | Name given to the AWS S3 Bucket who store website static files. | `string` | n/a | yes |
| <a name="input_bucket_policy"></a> [bucket\_policy](#input\_bucket\_policy) | Policy to attach to S3 bucket resource. | `any` | n/a | yes |
| <a name="input_bucket_restrict_public_buckets"></a> [bucket\_restrict\_public\_buckets](#input\_bucket\_restrict\_public\_buckets) | Whether Amazon S3 should restrict public bucket policies for this bucket. | `bool` | `true` | no |
| <a name="input_bucket_tags"></a> [bucket\_tags](#input\_bucket\_tags) | Map of tags attached to the S3 Bucket. | `map(string)` | `{}` | no |
| <a name="input_bucket_versioning"></a> [bucket\_versioning](#input\_bucket\_versioning) | Enable versioning for file in the bucket. | `bool` | `true` | no |
| <a name="input_website_error_file_name"></a> [website\_error\_file\_name](#input\_website\_error\_file\_name) | Default error file name of the website. | `string` | `"error.html"` | no |
| <a name="input_website_index_file_name"></a> [website\_index\_file\_name](#input\_website\_index\_file\_name) | Default index file name of the website. | `string` | `"index.html"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_bucket"></a> [bucket](#output\_bucket) | Bucket terraform object. |
