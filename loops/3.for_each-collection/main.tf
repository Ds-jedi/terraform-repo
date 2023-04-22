resource "aws_vpc" "main" {
cidr_block  = "10.0.0.0/16"
}


resource "aws_subnet" "example" {
  for_each                  = local.Subnet-values
  vpc_id                    = aws_vpc.main.id
  cidr_block                = each.value.cidr
  availability_zone         = each.value.availability_zone

  tags = {
    Name                    = each.key # each.key refers to subnet-1,subnet-2,subnet-3 
  }
}
