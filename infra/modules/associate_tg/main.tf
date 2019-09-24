resource "aws_lb_target_group_attachment" "attach_tg" {
    target_group_arn = "${var.target_group_arn}"
    #target_id = "${var.instance_id}"
    port = "${var.port_number}"
}

