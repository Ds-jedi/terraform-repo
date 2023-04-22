variable "subnet_cidr_blocks" {
  description = "CIDR blocks for the subnets."
  type        = list(string)
  default     = ["10.0.0.0/19", "10.0.32.0/19", "10.0.64.0/19"]
}

variable "subnet_availability_zones" {
  description = "AZs for the subnets."
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}