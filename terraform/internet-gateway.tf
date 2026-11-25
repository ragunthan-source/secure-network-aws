resource "aws_internet_gateway" "production" {
  vpc_id = aws_vpc.production.id

  tags = {
    Name = "Acme-Production-IGW"
  }
}
