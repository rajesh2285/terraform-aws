# t2.micro node with an AWS Tag naming it "HelloWorld"
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web" {
  ami           = "ami-0a887e401f7654935"
  instance_type = "t2.micro"

  tags = {
    Name = "terraform test provision"
  }
}
