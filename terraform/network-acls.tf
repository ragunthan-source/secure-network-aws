resource "aws_network_acl" "app" {
  vpc_id = aws_vpc.production.id

  tags = {
    Name = "Acme-App-NACL"
  }
}
