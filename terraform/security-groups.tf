resource "aws_security_group" "alb" {
  name        = "Acme-ALB-SG"
  description = "Allow HTTPS traffic to Application Load Balancer"
  vpc_id      = aws_vpc.production.id

  revoke_rules_on_delete = false

  lifecycle {
    ignore_changes = [ingress, egress, tags]
  }

  tags = {
    Name = "Acme-ALB-SG"
  }
}

resource "aws_security_group" "app" {
  name        = "Acme-App-SG"
  description = "Allow application traffic only from ALB"
  vpc_id      = aws_vpc.production.id

  revoke_rules_on_delete = false

  lifecycle {
    ignore_changes = [ingress, egress, tags]
  }

  tags = {
    Name = "Acme-App-SG"
  }
}

resource "aws_security_group" "db" {
  name        = "Acme-DB-SG"
  description = "Allow PostgreSQL traffic only from application servers"
  vpc_id      = aws_vpc.production.id

  lifecycle {
    ignore_changes = [ingress, egress, tags]
  }
}

resource "aws_security_group" "wireguard" {
  name        = "Acme-WireGuard-SG"
  description = "Security group for WireGuard VPN gateway"
  vpc_id      = aws_vpc.production.id

  lifecycle {
    ignore_changes = [ingress, egress, tags]
  }

  tags = {
    Name = "Acme-WireGuard-SG"
  }
}
