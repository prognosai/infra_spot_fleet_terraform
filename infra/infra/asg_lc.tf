# launch config of autoscaling 
module "launch_config" {
  source  = "../modules/launch_conf"
  ami     = var.ami_id
  sg      = module.security_group.sg_id
  keypair = var.key_name
}
# Autoscaling group
module "autoscaling" {
  source                     = "../modules/autoscaling_gr"
  asg_name                   = var.asg_name
  tag_Name_value_od_instance = var.tag_Name_value_od_instance
  launch_conf                = module.launch_config.launch_id
  target_group               = module.targetgroup.tg_id
  sub-1                      = module.puba_subnet1.id
  sub-2                      = module.pubb_subnet3.id
}

########## creating interruption.py file 
module "python_file" {
  source                  = "../modules/function1_file"
  auto_scaling_group_name = var.asg_name
}

###### Archiving interruption.py to zip
module "archivetozip" {
  source        = "../modules/archive"
  zip_func      = "interruption.zip"
  src_file_func = module.python_file.filename
}
