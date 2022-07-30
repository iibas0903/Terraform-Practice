resource "aws_vpc" "ilknur-vpc" {
  cidr_block       = "10.0.0.0/16"

  tags = {
    Name = "ilknur-vpc"
  }
}

resource "aws_subnet" "ilknur-subnet1" {
  vpc_id     = aws_vpc.ilknur-vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name = "first subnet"
  }
}

resource "aws_subnet" "ilknur-subnet2" {
  vpc_id     = aws_vpc.ilknur-vpc.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "us-east-1c"
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


  


