# Create Elastic ip for nat
resource "aws_eip" "eip" {

}

# Creating nat gatway
resource "aws_nat_gateway" "nat_gatway" {
  allocation_id = aws_eip.eip.id
  subnet_id     = var.subnet_id

  tags = {
    Name = "${var.tag_Name_value}"
  }
}

