resource "aws_instance" "web" {
  ami                         = var.instance_ami
  instance_type               = var.instance_type
  associate_public_ip_address = true
  availability_zone           = var.instance_availability_zone
  key_name                    = var.key_name

}