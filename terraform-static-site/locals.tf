locals {
  # Common tags for all resources
  common_tags = {
    Project     = "Static Website"
    Environment = "Production"
    ManagedBy   = "Terraform"
  }

  # Direct S3 URLs (not website hosting)
  s3_urls = {
    index = "https://${aws_s3_bucket.site_bucket.bucket}.s3.${var.aws_region}.amazonaws.com/${var.index_document}"
    error = "https://${aws_s3_bucket.site_bucket.bucket}.s3.${var.aws_region}.amazonaws.com/${var.error_document}"
  }

  # Content file paths
  content_files = {
    index = "${path.module}/${var.site_content_path}/${var.index_document}"
    error = "${path.module}/${var.site_content_path}/${var.error_document}"
  }
}
