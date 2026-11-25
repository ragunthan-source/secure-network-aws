resource "aws_lb_listener" "http" {
  load_balancer_arn = aws_lb.production.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type = "forward"

    forward {
      stickiness {
        enabled  = false
        duration = 1
      }

      target_group {
        arn    = aws_lb_target_group.app.arn
        weight = 1
      }
    }
  }

  lifecycle {
    ignore_changes = [default_action]
  }
}
