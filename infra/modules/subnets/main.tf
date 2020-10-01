resource "aws_subnet" "subnet" {
  vpc_id            = var.vpc_id
  cidr_block        = var.cidr_subnet
  availability_zone = var.availabe_zone

  tags = {
    Name = "${var.tag_name_value}"
  }
}