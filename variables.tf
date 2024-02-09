variable "aws_region" {
    description = "EC2 Region for the VPC"
    default = "us-east-1"
}
variable "instance_ami" {
  description = "AMI for aws EC2 instance"
  default = "ami-0817d428a6fb68645"
}
variable "instance_type" {
  description = "type for aws EC2 instance"
  default = "t2.micro"
}
variable "key_name" {
  description = "Public key path"
  default     = "testebs"
}
variable "instance_count" {
  default = 2  # Change this value to the number of instances you want to create
}
variable "Name" {
  description = "Common name for ec2 instances"
  default     = "equifax"
}
