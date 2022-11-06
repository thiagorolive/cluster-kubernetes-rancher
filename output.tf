output "name" {
  value = var.name
}

output "public_ip" {
  value = aws_instance.server.public_ip
}

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