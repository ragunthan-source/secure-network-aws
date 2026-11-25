resource "aws_eip" "nat" {
  domain = "vpc"

  tags = {
    Name = "Acme-NAT-EIP"
  }
}
