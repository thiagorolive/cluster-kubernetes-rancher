# data "aws_security_group" "default" {
#   filter {
#     name   = "group-name"
#     values = ["default"]
#   }
# }

# resource "aws_security_group_rule" "tcp_port80" {
#   security_group_id = data.aws_security_group.default.id

#   type             = "ingress"
#   protocol         = "tcp"
#   cidr_blocks      = ["0.0.0.0/0"]
#   ipv6_cidr_blocks = ["::/0"]
#   from_port        = "80"
#   to_port          = "80"


# }

# resource "aws_security_group_rule" "tcp_port22" {
#   security_group_id = data.aws_security_group.default.id

#   type             = "ingress"
#   protocol         = "tcp"
#   cidr_blocks      = ["0.0.0.0/0"]
#   ipv6_cidr_blocks = ["::/0"]
#   from_port        = "22"
#   to_port          = "22"


# }
