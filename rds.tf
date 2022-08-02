resource "aws_db_instance" "ilknur-devops-db" {
  allocated_storage = 20
  engine            = "postgres"
  engine_version    = "10.17"
  instance_class    = "db.t3.micro"
  name              = "ilknurdb"
  username          = "ilknur"
  password          = aws_ssm_parameter.ilknur_ssm.value
  #parameter_group_name = "default.mysql5.7"
  skip_final_snapshot    = true
  db_subnet_group_name   = aws_db_subnet_group.first-db-sg.id
  vpc_security_group_ids = [aws_security_group.ilknur_allow_all.id]
}

resource "aws_db_subnet_group" "first-db-sg" {
  name       = "ilknur-subnet-group"
  subnet_ids = [aws_subnet.ilknur-subnet1.id, aws_subnet.ilknur-subnet2.id]
}


resource "random_password" "password" {
  length           = 16
  special          = true
  override_special = "_%@"
}

resource "aws_ssm_parameter" "ilknur_ssm" {
  name  = "/ilknur/devops/sbx/db_password"
  type  = "SecureString"
  key_id = aws_kms_key.db_key.key_id
  value = random_password.password.result
}

resource "aws_kms_key" "db_key" {
  description             = "KMS key for db encryption"
  deletion_window_in_days = 10
}