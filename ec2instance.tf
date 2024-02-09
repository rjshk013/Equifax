resource "aws_instance" "demo-ec2" {
  ami                    = "your-ami-id"
  instance_type          = "t2.micro"
  subnet_id              = "your-subnet-id" # Subnet ID within your existing VPC
  vpc_security_group_ids = ["your-security-group-id"] # Security Group ID within your existing VPC
  key_name               = "your-key"
  associate_public_ip_address = true # if launching public instance
  tags = {
    Name = "demoec2"
  }
}
