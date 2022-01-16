provider "aws" {
   region = "us-east-2"
   profile="default"
}


resource "aws_security_group"  "AkhileshSecurity" {

 name        = "akhil_security"

 description = "Allow TLS inbound traffic"

  vpc_id      = "vpc-bf7ce3d4"

  dynamic "ingress" {
   for_each = "${var.security_group_ports}"
    content     {
      description      = "inbound traffic"
      from_port        = ingress.value
      to_port          = ingress.value
      protocol         = "tcp,udp,smtp,http"
      cidr_blocks      = ["0.0.0.0/0"]
    }
}

  tags = {
    Name = "akhilesh_security tag"
  }
}


