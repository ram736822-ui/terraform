resource "aws_s3_bucket" "honda_bucket" {
  bucket = var.bucket_name
  tags   = var.bucket_tags
}
resource "aws_s3_bucket_versioning" "bucket_versioning" {
  bucket = aws_s3_bucket.honda_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_lifecycle_configuration" "bucket_lifecycle" {
  bucket = aws_s3_bucket.honda_bucket.id

  rule {
    id     = "log"
    status = "Enabled"

    filter {
      prefix = "log/"
    }

    expiration {
      days = 90
    }

    transition {
      days          = 30
      storage_class = "GLACIER"
    }
  }
}