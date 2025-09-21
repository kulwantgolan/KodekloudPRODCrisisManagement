# S3 Bucket Terraform Configuration

This Terraform configuration creates an S3 bucket with HTML files. Note: This does not configure static website hosting due to permission limitations.

## File Structure

- `main.tf` - Main Terraform configuration with resources
- `variables.tf` - Input variables and their definitions
- `outputs.tf` - Output values from the configuration
- `locals.tf` - Local values and computed expressions
- `terraform.tfvars.example` - Example variable values
- `site_content/` - Directory containing website files

## Usage

1. Copy `terraform.tfvars.example` to `terraform.tfvars` and customize the values:
   ```bash
   cp terraform.tfvars.example terraform.tfvars
   ```

2. Initialize Terraform:
   ```bash
   terraform init
   ```

3. Review the plan:
   ```bash
   terraform plan
   ```

4. Apply the configuration:
   ```bash
   terraform apply
   ```

## Key Variables

- `bucket_name` - Unique name for the S3 bucket
- `aws_region` - AWS region for resources
- `index_document` - Default page for the website
- `error_document` - Error page for the website

## Outputs

After applying, you'll get:
- `bucket_name` - Name of the created S3 bucket
- `bucket_arn` - ARN of the S3 bucket
- `bucket_domain_name` - Bucket domain name
- `bucket_website_url` - Direct S3 URL (requires public read access)
- `index_document_url` - Direct URL to the index page
- `error_document_url` - Direct URL to the error page

## Security Features

- Bucket owner enforced (no ACLs)
- Objects are tagged for organization
- Private bucket (no public access by default)

## Permissions Note

This configuration is designed to work with limited S3 permissions. The AWS user needs the following minimum permissions:
- `s3:CreateBucket`
- `s3:PutBucketOwnershipControls`
- `s3:PutObject`
- `s3:PutObjectTagging`
- `s3:Get*`
- `s3:List*`

## Important Notes

- **No Static Website Hosting**: Due to permission limitations, this does not configure S3 static website hosting
- **No Public Access Block**: The bucket will use default S3 security settings
- **Direct S3 URLs**: Files are accessible via direct S3 URLs (requires public read access to be configured separately if needed)
