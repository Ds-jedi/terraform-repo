output "first_Id" {
    value                                 =  aws_subnet.example[0].id 
    description                           = "ID for first subnet"
}


output "all_Id" {
    value                                 = aws_subnet.example[*].id 
    description                           = "printing all subnet ids"
}