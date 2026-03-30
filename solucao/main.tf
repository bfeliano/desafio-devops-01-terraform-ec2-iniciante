# Security Group
resource "aws_security_group" "web_sg" {
  name        = "desafio-devops-01-sg"
  description = "Security Group para o webserver"

  tags = {
    Name = "desafio-devops-01-sg"
  }
}

resource "aws_vpc_security_group_ingress_rule" "ssh" {
  security_group_id = aws_security_group.web_sg.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "tcp"
  from_port         = 22
  to_port           = 22
  description       = "SSH"
}

resource "aws_vpc_security_group_ingress_rule" "http" {
  security_group_id = aws_security_group.web_sg.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "tcp"
  from_port         = 80
  to_port           = 80
  description       = "HTTP"
}

resource "aws_vpc_security_group_egress_rule" "egress" {
  security_group_id = aws_security_group.web_sg.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1"
  description       = "Permitir todo o trafego de saida"
}

# Instância EC
resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type

  vpc_security_group_ids = [aws_security_group.web_sg.id]

  user_data = file("${path.module}/user_data.sh")

  tags = {
    Name = "desafio-devops-01-ec2"
  }
}