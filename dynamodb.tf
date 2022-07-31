resource "aws_dynamodb_table" "ilknur-dynamodb-lock" {
  name           = "terraform-lock"
  hash_key       = "LockID"
  read_capacity = 20
  write_capacity = 20 
  

  attribute {
    name = "LockID"
    type = "S"
  }
}
