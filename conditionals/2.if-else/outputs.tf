output "subnet_id" {
  value = (
    var.enable_public
    ? aws_subnet.public[0].id
    : aws_subnet.private[0].id
  )
}

output "subnet_id_v2" {
  value = one(concat(
    aws_subnet.public[*].id,
    aws_subnet.private[*].id
  ))
}