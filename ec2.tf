resource "aws_instance" "web" {
  ami                         = var.instance_ami
  instance_type               = var.instance_type
  associate_public_ip_address = true
  subnet_id                   = aws_subnet.ilknur-subnet1.id
  key_name                    = var.key_name
  vpc_security_group_ids      = [aws_security_group.ilknur_allow_all.id]
  iam_instance_profile        = aws_iam_instance_profile.ec2_profile.id
  user_data                   = file("userdata.sh")
}