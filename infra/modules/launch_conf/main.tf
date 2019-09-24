resource "aws_launch_configuration" "launch-configuration" {
    name                        = "launch-configuration"
    image_id                    = "${var.ami}"
    instance_type               = "t2.micro"
    security_groups             = ["${var.sg}"]
    associate_public_ip_address = "false"
    key_name                    = "${var.keypair}"
    user_data                   = <<-EOF
                                  #! /bin/bash
                                  sudo apt-get update
                                  sudo apt-get install python -y
                                  EOF
}

