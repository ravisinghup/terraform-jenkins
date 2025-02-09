resource "aws_vpc" "terra-demo" {
    cidr_block = "10.0.0.0/24"
    tags = {
      Name = "terraform-vpc"
    }
}