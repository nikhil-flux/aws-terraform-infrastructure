resource "random_id" "bucket_suffix" {
  byte_length = 4
}

resource "aws_s3_bucket" "app_data" {
  bucket = "${var.environment}-app-data-${random_id.bucket_suffix.hex}"

  tags = {
    Name = "${var.environment}-app-data"
  }
}