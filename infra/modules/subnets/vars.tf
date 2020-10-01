variable "vpc_id" {
  default = ""
}
variable "cidr_subnet" {
  description = "The CIDR block for the subnet."
  default     = "10.0.1.0/24"
}
variable "tag_name_value" {
  default = "terraform_1_subnet"
}
variable "availabe_zone" {
  description = "The AZ for the subnet"
  default     = "us-east-1a"
}



