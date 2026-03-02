provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source = "./modules/vpc"
  cidr_block = "10.0.0.0/16"
}

module "eks" {
  source = "./modules/eks"
  cluster_name = "ecommerce-cluster"
}

module "rds" {
  source = "./modules/rds"
  db_name = "ecommerce"
}
