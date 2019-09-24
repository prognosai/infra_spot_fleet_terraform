#### creating lambda function to trigger on interruption warning
module "function_one" {
  source = "../modules/lambdafunction"
  file_name = "${module.archivetozip.first_func_zip}"
  function_name = "${var.function_name}"
  role = "${module.iamrole.role_id}"
  handler = "${var.handler}"
  runtime = "${var.runtime}"
}

#### creating another lambda function to trigger on state change of instance to running
module "function_two" {
  source = "../modules/lambdafunction"
  #file_name = "${var.file_name1}"
  file_name = "${module.archivetozip1.second_func_zip}"
  function_name = "${var.function_name1}"
  role = "${module.iamrole.role_id}"
  handler = "${var.handler1}"
  runtime = "${var.runtime1}"
}