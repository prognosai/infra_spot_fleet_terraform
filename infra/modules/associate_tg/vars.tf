variable "target_group_arn" {
  description = "The arn of target group with you want to attach"
}
variable "instance_id" {
  description = "id of instance to register in target group"
}
variable "port_number" {
  description = "port number of instance to hit"
}

