output "first_Id" {
    value                       = module.subnets[1].subnet_id
    description                 = "ID for first subnet"
}


output "all_Id" {
    value                       = module.subnets[*].subnet_id
    description                 = "printing all subnet ids"
}