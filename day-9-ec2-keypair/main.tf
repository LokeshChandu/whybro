resource "aws_key_pair" "name" {
  public_key = file("C:/Users/chandu/.ssh/id_rsa.pub")
}


resource "aws_instance" "dev" {
  ami                    = "ami-0cc9838aa7ab1dce7"
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.name.key_name
  tags = {
    Name="key-tf"
  }
}