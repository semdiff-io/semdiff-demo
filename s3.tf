resource "aws_s3_bucket" "shared_bucket_marketing" {
  bucket = "semdiff-test-shared-bucket-marketing"

  tags = {
    tf_env = "demo"
  }
}

resource "aws_s3_bucket" "shared_bucket_marketing_public" {
  bucket = "semdiff-test-shared-bucket-marketing-public"

  tags = {
    tf_env = "demo"
  }
}

resource "aws_s3_bucket" "secret_bucket" {
  bucket = "semdiff-test-secret-bucket1"

  tags = {
    tf_env = "demo"
  }
}

