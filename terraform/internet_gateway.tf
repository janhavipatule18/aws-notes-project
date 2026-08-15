resource "aws_internet_gateway" "notes_igw" {
  vpc_id = aws_vpc.notes_vpc.id

  tags = {
    Name = "notes-app-igw"
  }
}

