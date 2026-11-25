resource "aws_subnet" "public_a" {
  vpc_id                  = aws_vpc.production.id
  cidr_block              = "10.10.1.0/24"
  availability_zone       = "ap-south-2a"
  map_public_ip_on_launch = true

  tags = {
    Name = "Acme-Public-A"
  }
}

resource "aws_subnet" "public_b" {
  vpc_id                  = aws_vpc.production.id
  cidr_block              = "10.10.2.0/24"
  availability_zone       = "ap-south-2b"
  map_public_ip_on_launch = true

  tags = {
    Name = "Acme-Public-B"
  }
}

resource "aws_subnet" "app_a" {
  vpc_id                  = aws_vpc.production.id
  cidr_block              = "10.10.11.0/24"
  availability_zone       = "ap-south-2a"
  map_public_ip_on_launch = false

  tags = {
    Name = "Acme-Private-App-A"
  }
}

resource "aws_subnet" "app_b" {
  vpc_id                  = aws_vpc.production.id
  cidr_block              = "10.10.12.0/24"
  availability_zone       = "ap-south-2b"
  map_public_ip_on_launch = false

  tags = {
    Name = "Acme-Private-App-B"
  }
}

resource "aws_subnet" "db_a" {
  vpc_id                  = aws_vpc.production.id
  cidr_block              = "10.10.21.0/24"
  availability_zone       = "ap-south-2a"
  map_public_ip_on_launch = false

  tags = {
    Name = "Acme-Private-DB-A"
  }
}

resource "aws_subnet" "db_b" {
  vpc_id                  = aws_vpc.production.id
  cidr_block              = "10.10.22.0/24"
  availability_zone       = "ap-south-2b"
  map_public_ip_on_launch = false

  tags = {
    Name = "Acme-Private-DB-B"
  }
}
