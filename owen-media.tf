# Videos, photo archives, &c
resource "aws_s3_bucket" "oj-media-library" {
  bucket = "oj-media-library"
  acl    = "private"

  lifecycle_rule {
    enabled = true

    transition {
      days          = 30
      storage_class = "ONEZONE_IA"
    }
  }

  tags = {
    Project = "bit-buckets"
  }
}

