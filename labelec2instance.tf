resource "aws_instance" "example" {
  count                  = var.instance_count
  ami                    = "your-ami-id"
  instance_type          = "t2.micro"
  subnet_id              = "your-subnet-id" # Subnet ID within your existing VPC
  vpc_security_group_ids = ["your-security-group-id"] # Security Group ID within your existing VPC

  tags = {
    "Name" = "var.name_tag" #we have to define static tag variable name.It will be common name for all instances
    "DynamicLabel" = "Instance${count.index + 1}Label"  # Dynamic label for each instance with count
  }
}
