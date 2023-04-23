variable "vpcs" {
  description = "list of vpcs"
  default = ["main","database"]
}

# title function converts to uppercase

output "new-vpcs" {
  value = [for each in var.vpcs : title(each)]
}


output "new-vpcs-2" {
  value = [for each in var.vpcs : title(each) if length(each) < 5]
}