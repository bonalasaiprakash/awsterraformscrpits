provider "aws" {
  region     = "us-east-1"
  access_key = "AKIA5SZF4BTGRJ5PJUPD"
  secret_key = "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"
  }
  
  resource "aws_s3_bucket" "saiprakash" {
  bucket = "my-prakash-07-2022"
  
  tags = {
    environment = "dev"
  }
}
