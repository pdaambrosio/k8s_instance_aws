
data "aws_vpc" "default_vpc" {
  filter {
    name   = "isDefault"
    values = ["true"]
  }
}

data "aws_subnet" "default_subnet" {
  vpc_id            = data.aws_vpc.default_vpc.id
  default_for_az    = true
  availability_zone = var.availability_zone
}

data "aws_security_group" "default_sg" {
  name   = "default"
  vpc_id = data.aws_vpc.default_vpc.id
}

module "ec2_kubernetes_control_plane_redhat" {
  source                      = "https://github.com/pdaambrosio/module_ec2_aws"
  servers                     = 3
  prefix                      = "k8s-control-plane-redhat"
  instance_type               = "t3.medium"
  ami_id                      = "ami-06640050dc3f556bb"
  subnet_id                   = data.aws_subnet.default_subnet.id
  security_group_id           = data.aws_security_group.default_sg.id
  user_data                   = "./scripts/install_containerd.sh"
  associate_public_ip_address = true
  volume_size                 = 15

  extra_tags = {
    Env = "IaC"
  }
}

module "ec2_kubernetes_worker_redhat" {
  source                      = "https://github.com/pdaambrosio/module_ec2_aws"
  servers                     = 2
  prefix                      = "k8s-worker-redhat"
  instance_type               = "t3.medium"
  ami_id                      = "ami-06640050dc3f556bb"
  subnet_id                   = data.aws_subnet.default_subnet.id
  security_group_id           = data.aws_security_group.default_sg.id
  user_data                   = "./scripts/install_containerd.sh"
  associate_public_ip_address = true
  volume_size                 = 30

  extra_tags = {
    Env = "IaC"
  }
}
