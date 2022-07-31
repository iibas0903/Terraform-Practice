resource "aws_s3_bucket" "ilknur_s3" {
  bucket = var.bucketname
  acl    = var.s3_acl
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

  versioning {
    enabled = var.versioning_enabled
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