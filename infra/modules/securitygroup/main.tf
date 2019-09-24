resource "aws_security_group" "terra_sg" {
    name = "${var.sg_name}"
    vpc_id = "${var.vpc_id}"
    
    ingress {
        from_port = "${var.from_port_ssh}"
        to_port = "${var.to_port_ssh}"
        protocol = "${var.protocol_ssh}"
        cidr_blocks = ["${var.cidr_block}"]
    }

    tags  = {
        Name = "${var.tag_name_value}"
    }
}
  