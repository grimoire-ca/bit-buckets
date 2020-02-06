# Videos, photo archives, &c
resource "aws_s3_bucket" "sm-media-library" {
  bucket = "sm-media-library"
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

