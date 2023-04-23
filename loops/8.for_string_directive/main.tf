variable "vpcs" {
  description = "list of vpcs"
  default = ["main","database","client"]
}


output "new-vpcs" {
  value = "%{for each in var.vpcs}${each},%{endfor}"
}

output "new-vpcs-2" {
  value = "%{for i,each in var.vpcs}(${i})${each},%{endfor}"
}
