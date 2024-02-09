resource "aws_instance" "example" {
  count                  = var.instance_count # need to create varible named "instance_count" in variables.tf
  ami                    = "your-ami-id"
  instance_type          = "t2.micro"
  subnet_id              = "your-subnet-id" # Subnet ID within your existing VPC
  vpc_security_group_ids = ["your-security-group-id"] # Security Group ID within your existing VPC

  tags = {
    "Name" = "var.name_tag"
    "Dynamiclable" = "ExampleInstance-${count.index + 1}"
  }
}
