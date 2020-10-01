resource "aws_lb_target_group" "terra_target_group" {
  name        = var.target_group_name
  port        = var.port_number
  protocol    = var.protocol
  vpc_id      = var.vpc_id
  target_type = var.target_type
  tags = {
    Name = "${var.tag_name_value}"
  }
}

