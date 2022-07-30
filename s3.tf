resource "aws_s3_bucket" "ilknur_s3" {
  bucket = "ilknur-bucket-01"
  acl    = "private"
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

versioning {
    enabled = true
  }

  object_lock_configuration {
    object_lock_enabled = "Enabled"
  }


}


# resource "aws_s3_bucket" "ilknur_s3-1" {
#   bucket = "ilknur-bucket-02"
#   tags = {
#     name    = "ilknurs bucket"
#     purpose = "practice"
#     Delete  = "yes"
#   }
# }