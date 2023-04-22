variable "subnet_cidr_block" {
  description = "CIDR blocks for the subnets."
  type        = string
}

variable "subnet_availability_zone" {
  description = "AZs for the subnets."
  type        = string
}

variable "vpc_id" {
  description = "vpc id."
  type        = string
}

variable "tags" {
  description = "tags"
  type        = map(string)
}