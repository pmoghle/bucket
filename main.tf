resource "aws_s3_bucket" "test-bucket" {
  bucket = "test-bucket"
}

resource "aws_s3_bucket_public_access_block" "test-bucket" {
  bucket = aws_s3_bucket.test-bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
