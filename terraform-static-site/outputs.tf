output "bucket_name" {
  description = "Name of the S3 bucket"
  value       = aws_s3_bucket.site_bucket.bucket
}

output "bucket_arn" {
  description = "ARN of the S3 bucket"
  value       = aws_s3_bucket.site_bucket.arn
}

output "bucket_domain_name" {
  description = "Bucket domain name"
  value       = aws_s3_bucket.site_bucket.bucket_domain_name
}

output "bucket_website_url" {
  description = "Direct URL to access the bucket (requires public read access to be configured separately)"
  value       = "https://${aws_s3_bucket.site_bucket.bucket}.s3.${var.aws_region}.amazonaws.com"
}

output "index_document_url" {
  description = "Direct URL to the index document"
  value       = "https://${aws_s3_bucket.site_bucket.bucket}.s3.${var.aws_region}.amazonaws.com/${var.index_document}"
}

output "error_document_url" {
  description = "Direct URL to the error document"
  value       = "https://${aws_s3_bucket.site_bucket.bucket}.s3.${var.aws_region}.amazonaws.com/${var.error_document}"
}
