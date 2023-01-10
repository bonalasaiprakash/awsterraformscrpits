resource "aws_s3_bucket" "horrer" {
  bucket = "my-tf-20-2020"
  acl    = "private"
  tags = {
    Environment = "Dev"
  }
}
