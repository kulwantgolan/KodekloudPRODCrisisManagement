terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.40"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

# Create bucket
resource "aws_s3_bucket" "site_bucket" {
  bucket = var.bucket_name
}

# Enforce bucket owner, disables ACLs
resource "aws_s3_bucket_ownership_controls" "owner_enforced" {
  bucket = aws_s3_bucket.site_bucket.id

  rule {
    object_ownership = var.object_ownership
  }
}

# Upload files with tags (you have s3:PutObjectTagging permission)
resource "aws_s3_object" "index" {
  bucket       = aws_s3_bucket.site_bucket.id
  key          = var.index_document
  source       = local.content_files.index
  content_type = var.content_type_html
  tags         = local.common_tags
}

resource "aws_s3_object" "error" {
  bucket       = aws_s3_bucket.site_bucket.id
  key          = var.error_document
  source       = local.content_files.error
  content_type = var.content_type_html
  tags         = local.common_tags
}