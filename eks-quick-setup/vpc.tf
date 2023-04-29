module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "4.0.1"


  name = "vpc-module-demo"
  cidr = "10.0.0.0/16"

  azs             = ["us-east-1a", "us-east-1b"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24"]
  private_subnet_names = ["app-pvt-subnet-1", "app-pvt-subnet-2"]
  public_subnet_names = ["app-pub-subnet-1", "app-pub-subnet-2"]
  enable_nat_gateway = true


  tags = {
    Name = "${var.cluster-name}-vpc"
  }
}