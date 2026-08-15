output "vpc_id" {
  description = "ID of the Notes App VPC"
  value       = aws_vpc.notes_vpc.id
}

output "public_subnet_id" {
  description = "ID of the public subnet"
  value       = aws_subnet.public_subnet.id
}

output "security_group_id" {
  description = "ID of the Notes App security group"
  value       = aws_security_group.notes_sg.id
}

output "ec2_instance_id" {
  description = "ID of the Notes App EC2 instance"
  value       = aws_instance.notes_server.id
}

output "ec2_public_ip" {
  description = "Public IP address of the Notes App EC2 instance"
  value       = aws_instance.notes_server.public_ip
}
