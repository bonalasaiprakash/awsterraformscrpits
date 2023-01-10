resource "aws_security_group" "dove_stack_sg" {
  vpc_id      = "vpc-0354eb13c9500d631"
  name        = "dove-stack-sg"
  description = "Sec Grp for dove ssh"
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/24"]
  }
  tags = {
    Name = "allow-ssh"
  }
}
