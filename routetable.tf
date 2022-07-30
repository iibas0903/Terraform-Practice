resource "aws_route_table" "ilknur-rtb" {
  vpc_id = aws_vpc.ilknur-vpc.id

  route {
    cidr_block = "10.10.2.0/24"
    gateway_id = aws_internet_gateway.ilknur-gateway.id
  }
}


resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.ilknur-subnet1.id
  route_table_id = aws_route_table.ilknur-rtb.id
}

resource "aws_route_table_association" "b" {
  subnet_id      = aws_subnet.ilknur-subnet2.id
  route_table_id = aws_route_table.ilknur-rtb.id
}


