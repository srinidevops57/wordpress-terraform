data "aws_ami" "ami" {
    name_regex = "Centos-8-Devops-Practice"
  owners = ["973714476881"]
}
variable "instances" {
  default = ["cart","catalog","user","payment","shipping"]
  }

resource "aws_instance" "frontend" {
  count = length(var.instances)
  ami=data.aws_ami.ami.image_id
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-070745be8c3953392"]
  tags = {
    name=var.instances[count.index]
  }
}