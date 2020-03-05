# provider "aws" {
#   region = "us-west-1"
# }
resource "aws_s3_bucket" "b" {
  bucket = "rajesh-terraform-demo-1"
  acl    = "private"
  #region = "us-east-1"
  tags = {
    Name        = "rajesh bucket"
    Environment = "Dev"
  }
  versioning {
    enabled = true
  }
}
