resource "aws_nat_gateway" "production" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.public_a.id

  tags = {
    Name = "Acme-Production-NAT"
  }
}
