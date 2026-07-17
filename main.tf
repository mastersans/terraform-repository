locals {
  common_tags = {
    Project     = var.project_name
    Environment = var.environment
    ManagedBy   = "terraform"
  }
}

module "ec2" {
  source = "./modules/ec2"

  project_name       = var.project_name
  environment        = var.environment
  subnet_id          = var.subnet_id
  vpc_id             = var.vpc_id
  instance_type      = var.instance_type
  ami_id             = var.ami_id
  key_name           = var.key_name
  security_group_ids = var.security_group_ids
  tags               = local.common_tags
}

module "ec2_2" {
  source = "./modules/ec2"

  project_name       = var.project_name
  environment        = var.environment
  name_suffix        = "-2"
  subnet_id          = var.subnet_id
  vpc_id             = var.vpc_id
  instance_type      = var.instance_type
  ami_id             = var.ami_id
  key_name           = var.key_name
  security_group_ids = var.security_group_ids
  tags               = local.common_tags
}
