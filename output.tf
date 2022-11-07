output "name" {
  value = var.name
}

# output "public_ip" {
#   value = aws_instance.server.public_ip
# }
# 
# Rancher server
# 
output "private_ip" {
  value = aws_instance.server.private_ip
}

output "public_dns" {
  value = aws_instance.server.public_dns
}

output "region" {
  value = var.region
}

output "instance_type" {
  value = var.instance_type
}

output "elastic_ip" {
  value = aws_eip_association.eip_assoc.public_ip
}
# 
# NODE MASTER
# 
output "name2" {
  value = var.name2
}

output "private_ip2" {
  value = aws_instance.server2.private_ip
}

output "public_dns2" {
  value = aws_instance.server2.public_dns
}

output "elastic_ip2" {
  value = aws_eip_association.eip_assoc2.public_ip
}
# 
# NODE 2
# 
output "name3" {
  value = var.name3
}

output "private_ip3" {
  value = aws_instance.server3.private_ip
}

output "public_dns3" {
  value = aws_instance.server3.public_dns
}

output "elastic_ip3" {
  value = aws_eip_association.eip_assoc3.public_ip
}
# 
# NODE 3  
# 
output "name4" {
  value = var.name4
}

output "private_ip4" {
  value = aws_instance.server4.private_ip
}

output "public_dns4" {
  value = aws_instance.server4.public_dns
}

output "elastic_ip4" {
  value = aws_eip_association.eip_assoc4.public_ip
}