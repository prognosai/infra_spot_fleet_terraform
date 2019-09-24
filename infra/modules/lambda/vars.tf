variable "alb_name" {
    description = "name of the alb"
    default = "terra_alb"
}
variable "alb_internal" {
    description = "Make ALB public or private"
    default = false
}
variable "lb_type" {
    description = "Loab balancer type"
    default = "application"
}
variable "security_group" {
    description = "Scurity group for ALB"
    type = "list"
}
variable "subnet_id" {
    description = "List of Subnet to add for ALB"
    type = "list"
}
variable "tag_name_value" {
    description = "The value for tag name"
    default = "terra_alb"
}


