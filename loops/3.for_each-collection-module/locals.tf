locals {
  Subnet-values = {
    subnet-1 = {
      cidr     = "10.0.0.0/24"
      availability_zone = "us-east-1a"
    }
    subnet-2 = {
      cidr     = "10.0.1.0/24"
      availability_zone = "us-east-1b"
    }
    subnet-3 = {
      cidr     = "10.0.2.0/24"
      availability_zone = "us-east-1c"
    }
  }
}