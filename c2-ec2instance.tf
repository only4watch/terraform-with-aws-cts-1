resource "aws_instance" "name" {
  ami = "ami-08e4e35cccc6189f4"
  instance_type = "t3.micro"
  user_data = file ("${path.module}/app1-install.sh")
  tags = {
      "Name" = "Ec2-Demo"
  }
}