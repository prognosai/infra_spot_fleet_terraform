# Creating Spot Fleet Request
module "spot_fleet_request" {
    source       = "../modules/fleet_request"
    allocation_strategy   = "${var.allocation_strategy}"
    target_capacity = "${var.target_capacity}"
    target_group_arn = "${module.targetgroup.tg_id}"
    #tag_role_id = "${module.iamrole_spot_tagging.spot_role_id}"
    tag_role_id = "${module.spot_tagging_role.spot_role_arn}"
    
    ####### first LS
    vpc_sg_id1 = "${module.security_group.sg_id}"
    ami_id1 = "${data.aws_ami.ubuntu.id}"
    key_name1 = "${module.key_pair.key_id}"
    instance_type1 = "${var.instance_type1}"
    spot_price1 = "${var.spot_price1}"
    availability_zone1 = "${var.availability_zone1}"
    subnet_id1 = "${module.puba_subnet1.id}"
    instance_tag_name_value1 = "${var.instance_tag_name_value}"

    ####### second LS
    vpc_sg_id2 = "${module.security_group.sg_id}"
    ami_id2 = "${data.aws_ami.ubuntu.id}"
    key_name2 = "${module.key_pair.key_id}"
    instance_type2 = "${var.instance_type2}"
    spot_price2 = "${var.spot_price2}"
    availability_zone2 = "${var.availability_zone2}"
    subnet_id2 = "${module.puba_subnet2.id}"
    instance_tag_name_value2 = "${var.instance_tag_name_value}"

    ####### Third LS
    vpc_sg_id3 = "${module.security_group.sg_id}"
    ami_id3 = "${data.aws_ami.ubuntu.id}"
    key_name3 = "${module.key_pair.key_id}"
    instance_type3 = "${var.instance_type3}"
    spot_price3 = "${var.spot_price3}"
    availability_zone3 = "${var.availability_zone3}"
    subnet_id3 = "${module.pubb_subnet3.id}"
    instance_tag_name_value3 = "${var.instance_tag_name_value}"

    ####### Fourth LS
    vpc_sg_id4 = "${module.security_group.sg_id}"
    ami_id4 = "${data.aws_ami.ubuntu.id}"
    key_name4 = "${module.key_pair.key_id}"
    instance_type4 = "${var.instance_type4}"
    spot_price4 = "${var.spot_price4}"
    availability_zone4 = "${var.availability_zone4}"
    subnet_id4 = "${module.pubb_subnet4.id}"
    instance_tag_name_value4 = "${var.instance_tag_name_value}"

    ####### Fifth LS
    vpc_sg_id5 = "${module.security_group.sg_id}"
    ami_id5 = "${data.aws_ami.ubuntu.id}"
    key_name5 = "${module.key_pair.key_id}"
    instance_type5 = "${var.instance_type5}"
    spot_price5 = "${var.spot_price5}"
    availability_zone5 = "${var.availability_zone5}"
    subnet_id5 = "${module.puba_subnet1.id}"
    instance_tag_name_value5 = "${var.instance_tag_name_value}"
}

########## Creating od_running.py file
module "python_file2" {
    source = "../modules/function2_file"
    tag_spot = "${var.instance_tag_name_value}"
    tag_od = "${var.tag_Name_value_od_instance}"
    sfr_id = "${module.spot_fleet_request.spot_fleet_request_id}"
}

###### Archiving od_running.py to zip
module "archivetozip1" {
    source = "../modules/archive1"
    zip_func1 = "od_running.zip"
    src_file_func1 = "${module.python_file2.filename1}"
}