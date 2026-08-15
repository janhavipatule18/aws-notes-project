resource "aws_instance" "notes_server" {
  ami           = "ami-01a00762f46d584a1"
  instance_type = var.instance_type
  key_name      = "notes-app-key"

  subnet_id = aws_subnet.public_subnet.id

  vpc_security_group_ids = [
    aws_security_group.notes_sg.id
  ]

  tags = {
    Name = "notes-app-server"
  }
}
