resource "aws_network_acl_association" "app_a" {
  network_acl_id = aws_network_acl.app.id
  subnet_id      = aws_subnet.app_a.id
}

resource "aws_network_acl_association" "app_b" {
  network_acl_id = aws_network_acl.app.id
  subnet_id      = aws_subnet.app_b.id
}
