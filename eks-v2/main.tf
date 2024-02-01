module "new-vpc" {
  source        = "./modules/vpc"
  prefix        = var.prefix
  total_subnets = 2
}

module "eks-cluster" {
  source            = "./modules/eks"
  prefix            = var.prefix
  vpc_id            = module.new-vpc.vpc_id
  subnet_ids        = module.new-vpc.subnet_ids
  cluster_name      = var.cluster_name
  retention_in_days = var.retention_in_days
  desired_node_size = var.desired_node_size
  max_node_size     = var.max_node_size
  min_node_size     = var.min_node_size
}
