# Public route: Internet Gateway
resource "aws_route" "public_internet" {
  route_table_id         = aws_route_table.public.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.production.id
}

# Private App route: NAT Gateway
resource "aws_route" "app_nat" {
  route_table_id         = aws_route_table.private_app.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "nat-0c8ea3db7a15d69c5"
}

# VPC Peering routes
resource "aws_route" "public_peering" {
  route_table_id            = aws_route_table.public.id
  destination_cidr_block    = "10.20.0.0/16"
  vpc_peering_connection_id = "pcx-0be50ea02be18ed15"
}

resource "aws_route" "app_peering" {
  route_table_id            = aws_route_table.private_app.id
  destination_cidr_block    = "10.20.0.0/16"
  vpc_peering_connection_id = "pcx-0be50ea02be18ed15"
}

resource "aws_route" "db_peering" {
  route_table_id            = aws_route_table.private_db.id
  destination_cidr_block    = "10.20.0.0/16"
  vpc_peering_connection_id = "pcx-0be50ea02be18ed15"
}
