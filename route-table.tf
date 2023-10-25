resource "aws_route_table" "route1" {
  vpc_id = aws_vpc.vpc1.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "aws_internet_gateway.IG-1.id"
  }
  tags = {
    name="routing-1"
  }
}
resource "aws_route_table_association" "route1" {
  subnet_id = "aws_subnet.public-subnet.id"
  route_table_id = "aws_route_table.route1.id"
}