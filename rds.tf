resource "aws_db_instance" "ilknur-devops-db" {
  allocated_storage = 20
  engine            = "postgres"
  engine_version    = "10.17"
  instance_class    = "db.t3.micro"
  name              = "ilknurdb"
  username          = "ilknur"
  password          = "password"
  #parameter_group_name = "default.mysql5.7"
  skip_final_snapshot    = true
  db_subnet_group_name   = aws_db_subnet_group.first-db-sg.id
  vpc_security_group_ids = [aws_security_group.ilknur_allow_all.id]
}

resource "aws_db_subnet_group" "first-db-sg" {
  name       = "ilknur-subnet-group"
  subnet_ids = [aws_subnet.ilknur-subnet1.id, aws_subnet.ilknur-subnet2.id]
}