resource "aws_vpc" "main" {
cidr_block  = "10.0.0.0/16"
}


resource "aws_subnet" "example" {
  for_each                      = toset(var.subnet_cidr_blocks)
  vpc_id                        = aws_vpc.main.id
  cidr_block                    = each.value
  availability_zone             = "us-east-1a"

}
