variable "allocation_strategy" {
    description = "Allocation strategy for the spot fleet request."
    default = ""
}
variable "target_capacity" {
    description = "Number of spot instances we want to request."
    default = ""
}
variable "target_group_arn" {
    description = "Target group under which we want our instances to launch."
    default = ""
}
variable "tag_role_id" {
    description = "AWS ec2 spot fleet tagging role"
    default = ""
}

######## first launch specification
variable "vpc_sg_id1" {
    description = "Security group for your spot instance"
    default = ""
}
variable "ami_id1" {
    description = "Specify your ami id"
    default = ""
}
variable "key_name1" {
    description = "Your key-pair"
    default = ""
}
variable "instance_type1" {
    description = "Instance type for your spot fleet first launch specification"
    default = ""
}

variable "spot_price1" {
    description = "Specify maximum price or default on-demand price"
    default = ""
}
variable "availability_zone1" {
    description = "AZ for your first launch specification"
    default = ""
}
variable "subnet_id1" {
    description = "Subnet into which this launch specification will launch spot instance."
    default = ""
}
variable "instance_tag_name_value1" {
    description = "value for Name tag"
    default = ""
}

######## second launch specification
variable "vpc_sg_id2" {
    description = "Security group for your spot instance"
    default = ""
}
variable "ami_id2" {
    description = "Specify your ami id"
    default = ""
}
variable "key_name2" {
    description = "Your key-pair"
    default = ""
}
variable "instance_type2" {
    description = "Instance type for your spot fleet first launch specification"
    default = ""
}

variable "spot_price2" {
    description = "Specify maximum price or default on-demand price"
    default = ""
}
variable "availability_zone2" {
    description = "AZ for your first launch specification"
    default = ""
}
variable "subnet_id2" {
    description = "Subnet into which this launch specification will launch spot instance."
    default = ""
}
variable "instance_tag_name_value2" {
    description = "value for Name tag"
    default = ""
}

######## third launch specification
variable "vpc_sg_id3" {
    description = "Security group for your spot instance"
    default = ""
}
variable "ami_id3" {
    description = "Specify your ami id"
    default = ""
}
variable "key_name3" {
    description = "Your key-pair"
    default = ""
}
variable "instance_type3" {
    description = "Instance type for your spot fleet first launch specification"
    default = ""
}

variable "spot_price3" {
    description = "Specify maximum price or default on-demand price"
    default = ""
}
variable "availability_zone3" {
    description = "AZ for your first launch specification"
    default = ""
}
variable "subnet_id3" {
    description = "Subnet into which this launch specification will launch spot instance."
    default = ""
}
variable "instance_tag_name_value3" {
    description = "value for Name tag"
    default = ""
}

######## fourth launch specification
variable "vpc_sg_id4" {
    description = "Security group for your spot instance"
    default = ""
}
variable "ami_id4" {
    description = "Specify your ami id"
    default = ""
}
variable "key_name4" {
    description = "Your key-pair"
    default = ""
}
variable "instance_type4" {
    description = "Instance type for your spot fleet first launch specification"
    default = ""
}

variable "spot_price4" {
    description = "Specify maximum price or default on-demand price"
    default = ""
}
variable "availability_zone4" {
    description = "AZ for your first launch specification"
    default = ""
}
variable "subnet_id4" {
    description = "Subnet into which this launch specification will launch spot instance."
    default = ""
}
variable "instance_tag_name_value4" {
    description = "value for Name tag"
    default = ""
}

######## Fifth launch specification
variable "vpc_sg_id5" {
    description = "Security group for your spot instance"
    default = ""
}
variable "ami_id5" {
    description = "Specify your ami id"
    default = ""
}
variable "key_name5" {
    description = "Your key-pair"
    default = ""
}
variable "instance_type5" {
    description = "Instance type for your spot fleet first launch specification"
    default = ""
}

variable "spot_price5" {
    description = "Specify maximum price or default on-demand price"
    default = ""
}
variable "availability_zone5" {
    description = "AZ for your first launch specification"
    default = ""
}
variable "subnet_id5" {
    description = "Subnet into which this launch specification will launch spot instance."
    default = ""
}
variable "instance_tag_name_value5" {
    description = "value for Name tag"
    default = ""
}
