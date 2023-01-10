provider "aws" {
  region     = "us-east-1"
  access_key = "AKIA5SZF4BTGRJ5PJUPD"
  secret_key = "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"
  }

  resource "aws_instance" "server" {
  ami           = "ami-0a6b2839d44d781b2"
  instance_type = "t2.micro"
  count = 2
  subnet_id     = "subnet-0c9cb770dfd5a16ab"
  security_groups = ["sg-06658c2861bf8e3ce"]
  key_name      = "prakash"

  tags = {
    Name = "saiprakash"
  }
}