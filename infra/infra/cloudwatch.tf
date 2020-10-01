##### creating first cloudwatch rule
module "cw_rule" {
  source               = "../modules/cloudwatch"
  name_crule           = var.cwrule_name
  lambda_function_arn  = module.function_one.lambda_id
  lambda_function_name = module.function_one.func_name
}

##### creating second cloudwatch rule
module "cw_rule1" {
  source                      = "../modules/cloudwatch1"
  name_cwrule                 = var.cwrule
  state_running_function_arn  = module.function_two.lambda_id
  state_running_function_name = module.function_two.func_name
}