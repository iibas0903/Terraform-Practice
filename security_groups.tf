resource "aws_security_group" "ilknur_allow_all" {
  name        = var.sg_name
  description = "Allow ALL sg"
  vpc_id      = aws_vpc.ilknur-vpc.id

  ingress {
    description = "TLS from VPC"
    from_port   = var.sg_ingress_from_port
    to_port     = var.sg_ingress_to_port
    protocol    = var.ingress_protocol
    cidr_blocks = var.ingress_cidr_blocks
    #ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
  }

  egress {
    from_port        = var.sg_egress_from_port
    to_port          = var.sg_egress_to_port
    protocol         = var.egress_protocol
    cidr_blocks      = var.egress_cidr_blocks
    ipv6_cidr_blocks = var.egress_ipv6_cidr_blocks
  }

  tags = {
    Name = "ilknur 1st security group"
  }
}