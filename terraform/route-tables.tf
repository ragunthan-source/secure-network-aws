resource "aws_route_table" "public" {
  vpc_id = aws_vpc.production.id

  tags = {
    Name = "Acme-Public-RT"
  }
}

resource "aws_route_table" "private_app" {
  vpc_id = aws_vpc.production.id

  tags = {
    Name = "Acme-Private-App-RT"
  }
}

resource "aws_route_table" "private_db" {
  vpc_id = aws_vpc.production.id

  tags = {
    Name = "Acme-Private-DB-RT"
  }
}
