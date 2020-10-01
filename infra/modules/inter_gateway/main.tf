resource "aws_internet_gateway" "inter_gateway" {
  vpc_id = var.vpc_id

  tags = {
    Name = "${var.ig_tag_Name}"
  }
}