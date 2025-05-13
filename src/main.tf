module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = var.aws_vpc_name
  cidr = var.aws_vpc_cidr

  azs = var.aws_vpc_azrs
  private_subnets = var.aws_vpc_private_subnets
  public_subnets = var.aws_vpc_public_subnets

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = var.aws_project_tags
}

module "eks" {
  source = "terraform-aws-modules/eks/aws"

  cluster_name = var.aws_eks_name
  cluster_version = var.aws_eks_version

  enable_cluster_creator_admin_permissions = true

  subnet_ids = module.vpc.public_subnets
  vpc_id = module.vpc.default_vpc_id

  cluster_endpoint_public_access = true

  eks_managed_node_groups = {
    default = {
      min_size = 2
      max_size = 2
      desired_size = 2

      instance_types = var.aws_eks_eks_managed_node_groups_instance_types
    }
  }
}