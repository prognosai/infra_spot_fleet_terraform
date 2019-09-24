resource "aws_lb_listener" "alb_listing" {
   load_balancer_arn = "${var.load_balance_arn}"
   port = "${var.port_number}"
   protocol = "${var.protocol}"

   default_action {
     type = "${var.action_type}"
     target_group_arn = "${var.tg_arn}"
   }
 }

