resource "aws_vpc" "main" {
cidr_block  = "10.0.0.0/16"
}


resource "aws_security_group" "allow_tls" {
  name        = "my-sg"
  vpc_id      = aws_vpc.main.id

  dynamic "ingress" {
    for_each = var.my_custom_ports
    content {
        from_port        = ingress.key
        to_port          = ingress.key
        protocol         = "tcp"
        cidr_blocks      = ingress.value
    }
  }
 
  tags = {
    Name = "my-sg"
  }
}