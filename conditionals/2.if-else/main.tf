resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}


variable "enable_public" {
  default = false
}

resource "aws_subnet" "public" {
  count = var.enable_public ? 1 : 0

  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.0.0/19"
}

resource "aws_subnet" "private" {
  count = var.enable_public ? 0 : 1

  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.0.0/19"
}

