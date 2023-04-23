

module "vpcs" {
  source = "../../modules/vpc-variable"

  enable_database_vpc = false
}