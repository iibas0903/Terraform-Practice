resource "aws_vpc" "ilknur-vpc" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = "ilknur-vpc"
  }
}

resource "aws_subnet" "ilknur-subnet1" {
  vpc_id            = aws_vpc.ilknur-vpc.id
  cidr_block        = var.subnet_1_cidr
  availability_zone = var.zone_1

  tags = {
    Name = "first subnet"
  }
}

resource "aws_subnet" "ilknur-subnet2" {
  vpc_id            = aws_vpc.ilknur-vpc.id
  cidr_block        = var.subnet_2_cidr
  availability_zone = var.zone_2
  tags = {
    Name = "second subnet"
  }
}

resource "aws_internet_gateway" "ilknur-gateway" {
  vpc_id = aws_vpc.ilknur-vpc.id

  tags = {
    Name = "ilknur gateway"
  }
}


resource "aws_network_interface" "ilknur-networkinterface" {
  subnet_id       = aws_subnet.ilknur-subnet1.id
  private_ips     = [var.private_ip]
  security_groups = [aws_security_group.ilknur_allow_all.id]
}


