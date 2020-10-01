resource "aws_route_table_association" "subnet_association" {
  subnet_id      = var.subnet_id
  route_table_id = var.routetable_id
}
