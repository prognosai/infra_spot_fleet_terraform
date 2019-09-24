resource "aws_spot_fleet_request" "cheap_compute"{

    iam_fleet_role = "${var.tag_role_id}"     ### your iam_fleet_role

    #spot_price = "0.105"                                                                  ### bid price

    allocation_strategy = "${var.allocation_strategy}"

    target_capacity = "${var.target_capacity}"                                                             ### number of spot instances we need

    valid_until = "2020-08-27T02:22:47Z"

    instance_interruption_behaviour = "terminate"

    terminate_instances_with_expiration = "true"

    target_group_arns = ["${var.target_group_arn}"]

    launch_specification {             ### For every availability zone and subnet id, launch specification should be separate

        instance_type = "${var.instance_type1}"

        ami = "${var.ami_id1}"

        spot_price = "${var.spot_price1}"

        key_name = "${var.key_name1}"

        availability_zone = "${var.availability_zone1}"

        subnet_id = "${var.subnet_id1}"

        vpc_security_group_ids = ["${var.vpc_sg_id1}"]

        root_block_device {
            volume_size = "8"
            volume_type = "gp2"
        }

        tags = {
            Name = "${var.instance_tag_name_value1}"
        }

    }

    launch_specification {

        instance_type = "${var.instance_type2}"

        ami = "${var.ami_id2}"

        spot_price = "${var.spot_price2}"

        key_name = "${var.key_name2}"

        availability_zone = "${var.availability_zone2}"

        subnet_id = "${var.subnet_id2}"

        vpc_security_group_ids = ["${var.vpc_sg_id2}"]

        root_block_device {
            volume_size = "8"
            volume_type = "gp2"
        }

        tags = {
            Name = "${var.instance_tag_name_value2}"
        }

    }

    launch_specification {

        instance_type = "${var.instance_type3}"

        ami = "${var.ami_id3}"

        spot_price = "${var.spot_price3}"

        key_name = "${var.key_name3}"

        availability_zone = "${var.availability_zone3}"

        subnet_id = "${var.subnet_id3}"

        vpc_security_group_ids = ["${var.vpc_sg_id3}"]

        root_block_device {
            volume_size = "8"
            volume_type = "gp2"
        }

        tags = {
            Name = "${var.instance_tag_name_value3}"
        }
    }

    launch_specification {

        instance_type = "${var.instance_type4}"

        ami = "${var.ami_id4}"

        spot_price = "${var.spot_price4}"

        key_name = "${var.key_name4}"

        availability_zone = "${var.availability_zone4}"

        subnet_id = "${var.subnet_id4}"

        vpc_security_group_ids = ["${var.vpc_sg_id4}"]

        root_block_device {
            volume_size = "8"
            volume_type = "gp2"
        }

        tags = {
            Name = "${var.instance_tag_name_value4}"
        }

    }

    launch_specification {

        instance_type = "${var.instance_type5}"

        ami = "${var.ami_id5}"

        spot_price = "${var.spot_price5}"

        key_name = "${var.key_name5}"

        availability_zone = "${var.availability_zone5}"

        subnet_id = "${var.subnet_id5}"

        vpc_security_group_ids = ["${var.vpc_sg_id5}"]

        root_block_device {
            volume_size = "8"
            volume_type = "gp2"
        }

        tags = {
            Name = "${var.instance_tag_name_value5}"
        }

    }

}
