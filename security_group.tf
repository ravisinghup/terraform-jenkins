resource "aws_security_group" "terra-sg" {
    name = "terra-sg"
    description = "Creating Security group using Jenkins"
    vpc_id = "aws_vpc.terra-demo.id"

    tags = {
        Name = "terra-sg"
    }
}

resource "aws_vpc_security_group_ingress_rule" "Irule1" {
    security_group_id = aws_security_group.terra-sg.id
    cidr_ipv4 = aws_vpc.terra-demo.cidr_block
    from_port = 443
    ip_protocol = "tcp"
    to_port = 443
}
