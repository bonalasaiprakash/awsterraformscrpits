provider "aws" {
  region     = "us-east-1"
  access_key = "AKIA5SZF4BTGRJ5PJUPD"
  secret_key = "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"
  }

  resource "aws_instance" "server" {
  ami           = "ami-0a6b2839d44d781b2"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0c9cb770dfd5a16ab"
  security_groups = [aws_security_group.dove_stack_sg.id]                                           ###  [resource syntax.resourcename.id]
  key_name      = "data-1"                                                             #####[aws_security_group.ec2instancename.id]
                                                                             ##            [aws_vpc_
  tags = {
    Name = "rakesh"
  }
}