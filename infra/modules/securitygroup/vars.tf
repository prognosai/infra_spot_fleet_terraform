variable "sg_name" {
  description = "Name of the Scurity group"
  default     = "terra_sg"
}
variable "vpc_id" {
  description = "The VPC id"
}
variable "from_port_ssh" {
  description = "The start port, From traffic is comming"
  default     = ""
}
variable "to_port_ssh" {
  description = "The end rage port"
  default     = ""
}
variable "protocol_ssh" {
  description = "protocol_ssh"
  default     = ""
}

variable "cidr_block" {
  description = "cidr block to allow"
  #type = "list"
  default = "0.0.0.0/0"
}
variable "tag_name_value" {
  description = "The value of tag Name"
  default     = "terra_sg"
}










