terraform {
  required_version = "0.13.3"
  required_providers {
    archive  = "~> 1.3"
    aws      = "~> 3.8.0"
    local    = "~> 1.4.0"
    template = "~> 2.1.2"
  }
}


provider "aws" {
  region  = "us-east-1"
  profile = "personal"
}

# Creating VPC
module "vpc" {
  source       = "../modules/vpc"
  cidr_block   = var.vpc_cidr_block
  vpc_Name_tag = var.vpc_tag_Name
}

#Creating Internet Gateway
module "internat_gateway" {
  source      = "../modules/inter_gateway"
  vpc_id      = module.vpc.id
  ig_tag_Name = var.igw_name
}

#Creating First Public Subnet
module "puba_subnet1" {
  source         = "../modules/subnets"
  vpc_id         = module.vpc.id
  cidr_subnet    = var.cidr_puba_subnet1
  availabe_zone  = var.availabe_zone_a
  tag_name_value = var.tag_name_subnet1
}
#Creating Second Public Subnet
module "puba_subnet2" {
  source         = "../modules/subnets"
  vpc_id         = module.vpc.id
  cidr_subnet    = var.cidr_puba_subnet2
  availabe_zone  = var.availabe_zone_a
  tag_name_value = var.tag_name_subnet2
}
#Creating third Public Subnet
module "pubb_subnet3" {
  source         = "../modules/subnets"
  vpc_id         = module.vpc.id
  cidr_subnet    = var.cidr_pubb_subnet3
  availabe_zone  = var.availabe_zone_b
  tag_name_value = var.tag_name_subnet3
}
#Creating third Public Subnet
module "pubb_subnet4" {
  source         = "../modules/subnets"
  vpc_id         = module.vpc.id
  cidr_subnet    = var.cidr_pubb_subnet4
  availabe_zone  = var.availabe_zone_b
  tag_name_value = var.tag_name_subnet4
}

#Creating route table for Public Subnets
module "pub_routetable" {
  source                = "../modules/routetable"
  vpc_id                = module.vpc.id
  cidr_block_routetable = var.cidr_block_routetable
  gateway_id            = module.internat_gateway.inter_gateway_id
  tag_Name_value        = var.name_routetable
}
# Associate Route Table with public subnets
module "pub1_association_to_routetable" {
  source        = "../modules/associations_routetable"
  subnet_id     = module.puba_subnet1.id
  routetable_id = module.pub_routetable.routetable_id
}
module "pub2_association_to_routetable" {
  source        = "../modules/associations_routetable"
  subnet_id     = module.puba_subnet2.id
  routetable_id = module.pub_routetable.routetable_id
}
module "pub3_association_to_routetable" {
  source        = "../modules/associations_routetable"
  subnet_id     = module.pubb_subnet3.id
  routetable_id = module.pub_routetable.routetable_id
}
module "pub4_association_to_routetable" {
  source        = "../modules/associations_routetable"
  subnet_id     = module.pubb_subnet4.id
  routetable_id = module.pub_routetable.routetable_id
}
