module "vpc" {
  source = "../../modules/vpc"

  environment         = "dev"
  vpc_cidr            = var.vpc_cidr
  private_subnet_cidr = var.private_subnet_cidr
  availability_zone   = var.availability_zone
}

module "ec2" {
  source = "../../modules/ec2"

  environment   = "dev"
  ami_id        = var.ami_id
  instance_type = var.instance_type
  instance_name = var.instance_name
  subnet_id     = module.vpc.private_subnet_id
  sg_id         = module.vpc.security_group_id
}
