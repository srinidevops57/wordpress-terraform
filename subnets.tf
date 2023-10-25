resource "aws_subnet" "public-subnet" {
  vpc_id = aws_vpc.vpc1.id
  cidr_block = "192.168.0.0/24"
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = "true"
  tags={
    Name="new-subnet"
  }
}
resource "aws_subnet" "private-subnet" {
  vpc_id = aws_vpc.vpc1.id
  cidr_block = "192.168.1.0/24"
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = "true"
  tags={
    Name="subnet-1"
  }
}