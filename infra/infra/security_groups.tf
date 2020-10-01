# Creating Security group for intstances
module "security_group" {
  source         = "../modules/securitygroup"
  sg_name        = var.name_sg
  vpc_id         = module.vpc.id
  from_port_ssh  = var.from_port_ssh
  to_port_ssh    = var.to_port_ssh
  protocol_ssh   = var.protocol_ssh
  cidr_block     = var.cidr_block
  tag_name_value = var.tag_name_sg
}