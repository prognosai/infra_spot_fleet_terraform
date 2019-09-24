variable "load_balance_arn" {
    description = "arn of load balancer to add listner"
}
variable "port_number" {
    description = "port number of listner"
    default = "80"
}
variable "protocol" {
    description = "protocol to follow"
    default = "HTTP"
}
variable "action_type" {
    description = "type of action, when traffic hit on alb"
    default = "forward"
}
variable "tg_arn" {
    description = "arn of target group to distribute traffic"
}   


