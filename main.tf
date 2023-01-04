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
[testing]
aws_access_key_id = AKIAQPEKF2BZAWQMHXIZ
aws_secret_access_key = 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
