# data "aws_ami" "ubuntu" {
#   most_recent = true

#   filter {
#     name   = "name"
#     values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
#   }
#   owners = ["099720109477"]
# }
# 
# Rancher Server
# 
resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.server.id
  allocation_id = aws_eip.server.id
}
resource "aws_instance" "server" {
  ami           = "ami-0f6ded6fd335abde3"
  instance_type = var.instance_type
  user_data = file("scripts/rancher-init.sh")

  tags = {
    name        = "server-rancher"
    environment = var.env
    provisioner = "terraform"

  }

}
resource "aws_eip" "server" {
  vpc = true
}

# NODE MASTER
# 
resource "aws_eip_association" "eip_assoc2" {
  instance_id   = aws_instance.server2.id
  allocation_id = aws_eip.server2.id
}
resource "aws_instance" "server2" {
  ami           = "ami-0f6ded6fd335abde3"
  instance_type = var.instance_type
  user_data = file("scripts/nodes-init.sh")

  tags = {
    name        = "node-master"
    environment = var.env
    provisioner = "terraform"

  }

}
resource "aws_eip" "server2" {
  vpc = true
}
# 
# 
# NODE 2
# 
resource "aws_eip_association" "eip_assoc3" {
  instance_id   = aws_instance.server3.id
  allocation_id = aws_eip.server3.id
}
resource "aws_instance" "server3" {
  ami           = "ami-0f6ded6fd335abde3"
  instance_type = var.instance_type
  user_data = file("scripts/nodes-init.sh")

  tags = {
    name        = "node-1"
    environment = var.env
    provisioner = "terraform"

  }

}
resource "aws_eip" "server3" {
  vpc = true
}
# 
# 
# Node 3
# 
resource "aws_eip_association" "eip_assoc4" {
  instance_id   = aws_instance.server4.id
  allocation_id = aws_eip.server4.id
}
resource "aws_instance" "server4" {
  ami           = "ami-0f6ded6fd335abde3"
  instance_type = var.instance_type
  user_data = file("scripts/nodes-init.sh")

  tags = {
    name        = "node-2"
    environment = var.env
    provisioner = "terraform"

  }

}
resource "aws_eip" "server4" {
  vpc = true
}
# 
# 