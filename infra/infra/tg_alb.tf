############## TARGET GROUP #############
module "targetgroup" {
  source            = "../modules/targetgroup"
  target_group_name = var.tg_name
  port_number       = var.tg_portno
  protocol          = var.tg_protocol
  vpc_id            = module.vpc.id
  target_type       = var.tg_target_type
  tag_name_value    = var.tg_tag_name
}

# Creating ALB
module "pub_alb" {
  source         = "../modules/alb"
  alb_name       = var.alb_name
  alb_internal   = false
  lb_type        = var.alb_type
  security_group = module.security_group.sg_id
  subnet_id      = module.puba_subnet1.id
  subnet_id1     = module.pubb_subnet3.id
  #subnet_id         = [
  #  "${module.puba_subnet1.id}",
  #  "${module.pubb_subnet3.id}"
  #]
  tag_name_value = var.alb_tag_name
}

# add listner to alb for  above creating target group

module "listner" {
  source           = "../modules/alb_listner"
  load_balance_arn = module.pub_alb.alb_id
  port_number      = var.alb_listener_port_no
  protocol         = var.alb_listener_protocol
  action_type      = var.alb_listener_action_type
  tg_arn           = module.targetgroup.tg_id
}