resource "aws_route53_record" "www" {
  zone_id = "${var.zone_id}"
  name    = "${var.name_domain}"
  type    = "CNAME"
  ttl     = "300"
  records = ["${var.alb_dns}"]
}
