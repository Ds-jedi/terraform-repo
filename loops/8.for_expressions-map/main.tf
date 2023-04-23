variable "vpcs" {
  description = "map of vpcs"
  default = {

    main = "main vpc"
    database = "vpc for database"
  }
}


output "new-vpcs" {
  value = [for i,j in var.vpcs : "${i} is the ${j}"]
}


output "new-vpcs-2" {
  value = {for i,j in var.vpcs : title(i) => title(j)}
}