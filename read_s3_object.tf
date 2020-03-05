data "aws_s3_bucket_object" "moderate-s3-bucket" {
  bucket = "moderate-s3-bucket"
  key    = "LICENSE.txt"
}

resource "aws_instance" "example" {
  instance_type = "t2.micro"
  ami           = "ami-002cc39e7bf021a77"
  user_data     = "${data.aws_s3_bucket_object.moderate-s3-bucket.body}"
}
