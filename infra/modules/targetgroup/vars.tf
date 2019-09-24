variable "target_group_name" {
    description = "Name of target group"
    default = "terra_targetgroup"
}
variable "port_number" {
    description = "The port number for target group"
    default = "80"
}
variable "protocol" {
    description = "The target group protocol to follow"
    default = "HTTP"
}
variable "vpc_id" {
    description = "The id of VPC"
    
}
variable "target_type" {
    description = "The type of target that you must specify when registering targets with this target group. you can choose instance, ip and lambda"
    default = "instance"
}
variable "tag_name_value" {
    description = "The value for tag Name"
    default = "terra_target_group"
}




