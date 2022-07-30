resource "aws_s3_bucket" "ilknur_s3" {
  bucket = "ilknur-bucket-01"
  tags = {
    name    = "ilknurs bucket"
    purpose = "practice"
    Delete  = "yes"
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