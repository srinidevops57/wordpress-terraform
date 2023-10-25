resource "aws_internet_gateway" "IG-1" {
  vpc_id = aws_vpc.vpc1.id
  tags = {
    Name="gateway-1"
  }
}