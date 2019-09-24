variable "launch_conf" {
    description = "ec2 launch configuration"
    default = ""
}

variable "sub-1" {
    description = "subnet in which ec2 launch"
}
variable "sub-2" {
    description = "subnet in which ec2 launch"
    default = ""
}

variable "target_group" {
    description = "target group"
    default = ""
}

variable "asg_name" {
    description = "Name of Auto scaling group"
    default = ""
}

variable "tag_Name_value_od_instance" {
    description = "tag_Name_value_od_instance"
    default = ""
}