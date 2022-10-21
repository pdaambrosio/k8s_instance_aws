output "vpc_default_id" {
  value = data.aws_vpc.default_vpc.id
  description = "Default VPC ID"
}

output "subnet_default_id" {
  value = data.aws_subnet.default_subnet.id
  description = "Default Subnet ID"
}

output "security_group_default_id" {
  value = data.aws_security_group.default_sg.id
  description = "Default Security Group ID"
}

output "private_key" {
  value     = module.ec2_kubernetes_control_plane_redhat.private_key
  sensitive = true
  description = "Private Key"
}

output "private_key" {
  value     = module.ec2_kubernetes_worker_redhat.private_key
  sensitive = true
  description = "Private Key"
}
