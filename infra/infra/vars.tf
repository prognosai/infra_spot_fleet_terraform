###################### VPC vars #####################
# VPC CIDR block
variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  default     = "10.0.0.0/16"
}
# TAGS for VPC
variable "vpc_tag_Name" {
  description = "Tag for VPC Name fields"
  default     = "vpc_spot_fleet"
}

################# INTERNET GATEWAY vars ##################
##### Integrnet Gateway Name
variable "igw_name" {
  description = "Name for Internet gateway"
  default     = "igw_spot_fleet"
}

#################### SUBNET vars ########################
#####  subnet1
variable "cidr_puba_subnet1" {
  description = "The CIDR block for the subnet."
  default     = "10.0.1.0/24"
}
variable "tag_name_subnet1" {
  description = "Tag name for the subnet1."
  default     = "sf_subnet1"
}

##### subnet2
variable "cidr_puba_subnet2" {
  description = "The CIDR block for the subnet."
  default     = "10.0.2.0/24"
}
variable "tag_name_subnet2" {
  description = "Tag name for the subnet2."
  default     = "sf_subnet2"
}

##### subnet3
variable "cidr_pubb_subnet3" {
  description = "The CIDR block for the subnet."
  default     = "10.0.3.0/24"
}
variable "tag_name_subnet3" {
  description = "Tag name for the subnet3."
  default     = "sf_subnet3"
}

##### subnet4
variable "cidr_pubb_subnet4" {
  description = "The CIDR block for the subnet."
  default     = "10.0.4.0/24"
}
variable "tag_name_subnet4" {
  description = "Tag name for the subnet4."
  default     = "sf_subnet4"
}

################# AVAILABILITY ZONES vars  ####################
##### availability zones
variable "availabe_zone_a" {
  description = "The AZ for the subnet"
  default     = "us-east-1a" ## For North Virginia region. Change when required
}
variable "availabe_zone_b" {
  description = "The AZ for the subnet"
  default     = "us-east-1b" ## For North Virginia region. Change when required
}

##################### ROUTE TABLE vars #######################
##### cidr-block routetable
variable "cidr_block_routetable" {
  description = "The CIDR block of the route"
  default     = "0.0.0.0/0"
}
##### route table name
variable "name_routetable" {
  description = "Name of the route table"
  default     = "pub_route_table_sf"
}

##################### SECURITY GROUPS vars ######################
##### All traffic request allowed from all port
variable "name_sg" {
  description = "Name of the Security Groups"
  default     = "security_group_sf"
}
variable "tag_name_sg" {
  description = "Name of the Security Groups"
  default     = "sg_sf"
}
variable "from_port_ssh" {
  description = "The start port, From traffic is comming"
  default     = "0"
}
variable "to_port_ssh" {
  description = "The end rage port"
  default     = "65535"
}
variable "protocol_ssh" {
  description = "protocol_ssh"
  default     = "tcp"
}
variable "cidr_block" {
  description = "cidr block to allow"
  #type = "list"
  default = "0.0.0.0/0"
}

######################## TARGET GROUPS #########################
variable "tg_name" {
  description = "Name of the Target Groups"
  default     = "target-sf"
}
variable "tg_portno" {
  description = "Port number Target Groups"
  default     = "80"
}
variable "tg_protocol" {
  description = "Protocol of the Target Groups"
  default     = "HTTP"
}
variable "tg_target_type" {
  description = "Target type of the Target Groups"
  default     = "instance"
}
variable "tg_tag_name" {
  description = "Tag Name of the Target Groups"
  default     = "sf_tg"
}

######################### Load Balancer ###########################
####### create ALB
variable "alb_name" {
  description = "Name of the ALB"
  default     = "alb-sf"
}
variable "alb_type" {
  description = "Type of the ALB"
  default     = "application"
}
variable "alb_tag_name" {
  description = "Tag Name of the ALB"
  default     = "alb_sf"
}
####### listener
variable "alb_listener_action_type" {
  description = "Action type for ALB Listener"
  default     = "forward"
}
variable "alb_listener_port_no" {
  description = "Port number for ALB Listener"
  default     = "80"
}
variable "alb_listener_protocol" {
  description = "Protocol for ALB Listener"
  default     = "HTTP"
}

######################## Key-pair vars ##############################
########## create key-pair
variable "key_name" {
  description = "key-pair name"
  default     = "spot_fleet"
}
variable "key_path" {
  description = "public keys path"
  default     = "~/.ssh/id_rsa.pub"
}

####################### Launch Config vars ##########################
######### create launch config
#variable "ami_id" {
#    description = "ami to create launch config"
#    default = "ami-05724f166d5150afa"
#}

###################### Auto Scaling vars ############################
######### For Auto Scaling group
variable "tag_Name_value_od_instance" {
  description = "ami to create launch config"
  default     = "Test"
}
variable "asg_name" {
  description = "ami to create launch config"
  default     = "spot"
}
#################### IAM Role vars ######################
variable "role_name" {
  description = "Name of the IAM Role"
  default     = "iam_for_lambda"
}

################### IAM Policy vars #####################
variable "policy_name" {
  description = "Name of the IAM Policy"
  default     = "admin_access"
}

#################### IAM Role vars for spot tagging ######################
variable "spot_role_name" {
  description = "Name of the IAM Role for spot tagging"
  default     = "iam_for_spot_tagging"
}

################### IAM Policy vars for spot tagging #####################
variable "spot_policy_name" {
  description = "Name of the IAM Policy for spot tagging"
  default     = "policy_for_spot_tagging"
}

############### Cloudwatch Rule1 vars ########################
variable "cwrule_name" {
  description = "Name of the Rule"
  default     = "on-interruption-warning"
}
############### Cloudwatch Rule1 vars ########################
variable "cwrule" {
  description = "Name of the Rule"
  default     = "on-state-change-to-running"
}

###################### Spot-Fleet vars #######################
variable "allocation_strategy" {
  description = "Allocation strategy for the spot fleet request."
  default     = "lowestPrice"
}
variable "target_capacity" {
  description = "Number of spot instances we want to request."
  default     = 2
}
######## launch specification common
variable "ami_id" {
  description = "Specify your ami id"
  default     = "ami-05724f166d5150afa"
}
variable "instance_tag_name_value" {
  description = "value for Name tag"
  default     = "fleet"
}
####### first launch specification
variable "instance_type1" {
  description = "Instance type for your spot fleet first launch specification"
  default     = "c3.large"
}
variable "spot_price1" {
  description = "Specify maximum price or default on-demand price"
  default     = "0.105"
}
variable "availability_zone1" {
  description = "AZ for your first launch specification"
  default     = "us-east-1a"
}

######## second launch specification
variable "instance_type2" {
  description = "Instance type for your spot fleet first launch specification"
  default     = "t3a.medium"
}
variable "spot_price2" {
  description = "Specify maximum price or default on-demand price"
  default     = "0.0376"
}
variable "availability_zone2" {
  description = "AZ for your first launch specification"
  default     = "us-east-1a"
}

######## third launch specification
variable "instance_type3" {
  description = "Instance type for your spot fleet first launch specification"
  default     = "t3.medium"
}
variable "spot_price3" {
  description = "Specify maximum price or default on-demand price"
  default     = "0.0376"
}
variable "availability_zone3" {
  description = "AZ for your first launch specification"
  default     = "us-east-1b"
}

######## fourth launch specification
variable "instance_type4" {
  description = "Instance type for your spot fleet first launch specification"
  default     = "c3.large"
}
variable "spot_price4" {
  description = "Specify maximum price or default on-demand price"
  default     = "0.0376"
}
variable "availability_zone4" {
  description = "AZ for your first launch specification"
  default     = "us-east-1b"
}

######## Fifth launch specification
variable "instance_type5" {
  description = "Instance type for your spot fleet first launch specification"
  default     = "a1.medium"
}
variable "spot_price5" {
  description = "Specify maximum price or default on-demand price"
  default     = "0.0376"
}
variable "availability_zone5" {
  description = "AZ for your first launch specification"
  default     = "us-east-1a"
}

################## Function1 vars #######################
variable "file_name" {
  description = "File name of the first function which is to trigger on interruption warning"
  default     = "interruption.zip"
}
variable "function_name" {
  description = "Function name of the first function which is to trigger on interruption warning"
  default     = "first_function"
}
variable "handler" {
  description = "Handler of the first function which is to trigger on interruption warning"
  default     = "interruption.lambda_handler"
}
variable "runtime" {
  description = "Environment needed to run lambda function"
  default     = "python3.7"
}

################ Function2 vars ############################
variable "file_name1" {
  description = "File name of the first function which is to trigger on interruption warning"
  default     = "od_running.zip"
}
variable "function_name1" {
  description = "Function name of the first function which is to trigger on interruption warning"
  default     = "second_function"
}
variable "handler1" {
  description = "Handler of the first function which is to trigger on interruption warning"
  default     = "od_running.lambda_handler"
}
variable "runtime1" {
  description = "Environment needed to run lambda function"
  default     = "python3.7"
}