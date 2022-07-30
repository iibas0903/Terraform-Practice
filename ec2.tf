resource "aws_instance" "web" {
  ami           = "ami-0cff7528ff583bf9a"
  instance_type = "t2.micro"
  associate_public_ip_address = true
  availability_zone = "us-east-1c"
  key_name = "ilknur-keypair"

}