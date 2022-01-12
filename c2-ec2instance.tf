resource "aws_instance" "name" {
  ami = data.aws_ami.amzlinux2.id
  instance_type = var.instance_type
  user_data = file ("${path.module}/app1-install.sh")
  #key_name = var.instance_keypair
  tags = {
      "Name" = "Ec2-Demo"
  }
}