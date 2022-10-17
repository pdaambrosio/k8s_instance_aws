output "vpc_default_id" {
  value = data.aws_vpc.default_vpc.id
}

output "subnet_default_id" {
  value = data.aws_subnet.default_subnet.id
}

output "security_group_default_id" {
  value = data.aws_security_group.default_sg.id
}

output "private_key" {
  value     = module.ec2_kubernetes_redhat.private_key
  sensitive = true
}
