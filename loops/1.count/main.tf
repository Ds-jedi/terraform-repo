resource "aws_vpc" "main" {
cidr_block  = "10.0.0.0/16"
}


resource "aws_subnet" "example" {
  count                     = length(var.subnet_cidr_blocks)
  vpc_id                    = aws_vpc.main.id
  cidr_block                = var.subnet_cidr_blocks[count.index]
  availability_zone         = var.subnet_availability_zones[count.index]
  tags = {
    Name                    = var.subnet_names[count.index]
  }
}
