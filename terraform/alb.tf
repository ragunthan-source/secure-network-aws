resource "aws_lb" "production" {
  name               = "Acme-Production-ALB"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.alb.id]

  subnets = [
    aws_subnet.public_a.id,
    aws_subnet.public_b.id
  ]

  lifecycle {
    ignore_changes = [tags]
  }

  tags = {
    Name = "Acme-Production-ALB"
  }
}
