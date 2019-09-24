output "pro_autoscaling_id" {
    value = "${aws_autoscaling_group.pro_auto.id}"
}

output "asg_name" {
    value = "${aws_autoscaling_group.pro_auto.name}"
}
