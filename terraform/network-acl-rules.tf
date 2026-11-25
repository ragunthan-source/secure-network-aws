# Inbound rules
resource "aws_network_acl_rule" "app_in_alb_a" {
  network_acl_id = aws_network_acl.app.id
  rule_number    = 100
  egress         = false
  protocol       = "6"
  rule_action    = "allow"
  cidr_block     = "10.10.1.0/24"
  from_port      = 8080
  to_port        = 8080
}

resource "aws_network_acl_rule" "app_in_alb_b" {
  network_acl_id = aws_network_acl.app.id
  rule_number    = 110
  egress         = false
  protocol       = "6"
  rule_action    = "allow"
  cidr_block     = "10.10.2.0/24"
  from_port      = 8080
  to_port        = 8080
}

resource "aws_network_acl_rule" "app_in_ephemeral" {
  network_acl_id = aws_network_acl.app.id
  rule_number    = 120
  egress         = false
  protocol       = "6"
  rule_action    = "allow"
  cidr_block     = "0.0.0.0/0"
  from_port      = 1024
  to_port        = 65535
}

# Outbound rules
resource "aws_network_acl_rule" "app_out_alb_a" {
  network_acl_id = aws_network_acl.app.id
  rule_number    = 100
  egress         = true
  protocol       = "6"
  rule_action    = "allow"
  cidr_block     = "10.10.1.0/24"
  from_port      = 1024
  to_port        = 65535
}

resource "aws_network_acl_rule" "app_out_alb_b" {
  network_acl_id = aws_network_acl.app.id
  rule_number    = 110
  egress         = true
  protocol       = "6"
  rule_action    = "allow"
  cidr_block     = "10.10.2.0/24"
  from_port      = 1024
  to_port        = 65535
}

resource "aws_network_acl_rule" "app_out_db_a" {
  network_acl_id = aws_network_acl.app.id
  rule_number    = 120
  egress         = true
  protocol       = "6"
  rule_action    = "allow"
  cidr_block     = "10.10.21.0/24"
  from_port      = 5432
  to_port        = 5432
}

resource "aws_network_acl_rule" "app_out_db_b" {
  network_acl_id = aws_network_acl.app.id
  rule_number    = 130
  egress         = true
  protocol       = "6"
  rule_action    = "allow"
  cidr_block     = "10.10.22.0/24"
  from_port      = 5432
  to_port        = 5432
}

resource "aws_network_acl_rule" "app_out_https" {
  network_acl_id = aws_network_acl.app.id
  rule_number    = 140
  egress         = true
  protocol       = "6"
  rule_action    = "allow"
  cidr_block     = "0.0.0.0/0"
  from_port      = 443
  to_port        = 443
}
