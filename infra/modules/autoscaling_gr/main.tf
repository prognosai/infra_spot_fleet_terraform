resource "aws_autoscaling_group" "pro_auto" {
  name                 = "${var.asg_name}"
  launch_configuration = "${var.launch_conf}"
  min_size             = 0
  max_size             = 2
  desired_capacity     = 0
  health_check_type    = "EC2" 
  target_group_arns    = ["${var.target_group}"]
  vpc_zone_identifier  = ["${var.sub-1}", "${var.sub-2}"]
  tag {
    key                = "Name"
    value              = "${var.tag_Name_value_od_instance}"
    propagate_at_launch = true
  }
}
