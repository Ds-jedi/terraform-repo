output "first_Id" {
    value                       = values(aws_subnet.example)[1].id
    description                 = "ID for first subnet"
}


output "all_Ids" {
    value                       = values(aws_subnet.example)[*].id
    description                 = "printing all subnet ids"
}