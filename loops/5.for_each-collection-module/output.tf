output "first_Id" {
    value                           = values(module.subnets)[1].subnet_id
    description                     = "ID for first subnet"
}


output "all_Ids" {
    value                           = values(module.subnets)[*].subnet_id   
    description                     = "printing all subnet ids"
}