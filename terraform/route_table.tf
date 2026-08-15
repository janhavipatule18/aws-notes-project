resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.notes_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.notes_igw.id
  }

  tags = {
    Name = "notes-app-public-rt"
  }
}
