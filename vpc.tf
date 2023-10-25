resource "aws_vpc" "vpc1" {
  cidr_block = "192.168.0.0/16"
  instance_tenancy = "default"
  enable_dns_hostnames = "true"
  tags = {
    Name="my vpc"
  }
}