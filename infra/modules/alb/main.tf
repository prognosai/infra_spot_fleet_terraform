resource "aws_lb" "terra_alb" {
  name               = var.alb_name
  internal           = var.alb_internal
  load_balancer_type = var.lb_type
  security_groups    = ["${var.security_group}"]
  subnets            = ["${var.subnet_id}", "${var.subnet_id1}"]

  tags = {
    Name = "${var.tag_name_value}"
  }
}
