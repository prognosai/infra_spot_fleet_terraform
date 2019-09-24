variable "vpc_id" {
    description = "The VPC id"
}
variable "cidr_block_routetable" {
    description = "The CIDR block of the route"
    default = "0.0.0.0/0"
}
variable "gateway_id" {
    description = "The gateway id"
}
variable "tag_Name_value" {
    description = "The Value of tag Name"
    default = "terraform_routetable"
}


