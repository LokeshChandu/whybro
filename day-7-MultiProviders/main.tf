provider "aws" {
    region = "ap-south-1"
  
}

provider "aws" {
    region = "us-east-1"
    alias = "america"
  
}

resource "aws_instance" "test" {
    ami = "ami-0cc9838aa7ab1dce7"
    key_name = "ChanduKeyPair"
    instance_type = "t2.micro"
  
}

resource "aws_instance" "test-2" {
    ami = "ami-0bb84b8ffd87024d8"
    instance_type = "t2.micro"
    key_name = "useast1keypair"
    provider = aws.america
  
}