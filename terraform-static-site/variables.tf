variable "aws_region" {
  description = "AWS region for resources"
  type        = string
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "Name of the S3 bucket for the static website"
  type        = string
  default     = "your-private-static-site-12345"
}

variable "index_document" {
  description = "The index document for the website"
  type        = string
  default     = "index.html"
}

variable "error_document" {
  description = "The error document for the website"
  type        = string
  default     = "error.html"
}

variable "content_type_html" {
  description = "Content type for HTML files"
  type        = string
  default     = "text/html"
}

variable "site_content_path" {
  description = "Path to the site content directory"
  type        = string
  default     = "site_content"
}


variable "object_ownership" {
  description = "Object ownership setting for the bucket"
  type        = string
  default     = "BucketOwnerEnforced"
  validation {
    condition     = contains(["BucketOwnerPreferred", "ObjectWriter", "BucketOwnerEnforced"], var.object_ownership)
    error_message = "Object ownership must be one of: BucketOwnerPreferred, ObjectWriter, BucketOwnerEnforced."
  }
}
