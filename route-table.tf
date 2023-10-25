resource "aws_route_table" "r" {
  vpc_id = aws_vpc.vpc1.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "aws_internet_gateway.gateway-1"
  }
  tags = {
    name="routing-1"
  }
}
resource "aws_route_table_association" "route-a" {
  subnet_id = "aws_subnet.public-subnet.id"
  route_table_id = "aws_route_table.r.id"
}