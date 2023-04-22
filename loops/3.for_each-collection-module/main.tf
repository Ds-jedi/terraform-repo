resource "aws_vpc" "main" {
cidr_block  = "10.0.0.0/16"
}


module "subnets" {
  source                    = "../../modules/subnet"
  for_each                  = local.Subnet-values
  vpc_id                    = aws_vpc.main.id
  subnet_cidr_block         = each.value.cidr
  subnet_availability_zone  = each.value.availability_zone

  tags = {
    Name                    = each.key # each.key refers to subnet-1,subnet-2,subnet-3 
  } 
}