###### creating iam role
module "iamrole" {
  source    = "../modules/iamrole"
  role_name = var.role_name
}

##### creating iam policy
module "iampolicy" {
  source      = "../modules/iampolicy"
  policy_name = var.policy_name
  role_name   = module.iamrole.role_name

}

###### creating iam role for spot tagging
#module "iamrole_spot_tagging" {
#  source = "../modules/iamrole_spot"
#  spot_role_name = "${var.spot_role_name}"
#}

##### creating iam policy
#module "iampolicy_spot_tagging" {
#  source = "../modules/iampolicy_spot"
#  spot_policy_name = "${var.spot_policy_name}"
#  spot_role_name = "${module.iamrole_spot_tagging.spot_role_name}"
#  
#}

module "spot_tagging_role" {
  source = "../modules/spot_role"
}