output "alb_id" {
  value = "${aws_lb.terra_alb.id}"
}

output "alb_dns" {
  value = "${aws_lb.terra_alb.dns_name}"
}

