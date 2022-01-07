provider "aws" {
  region = "us-east-2"
}
resource "aws_instance" "web" {
  ami           = "ami-0fb653ca2d3203ac1"
  instance_type = "t2.micro"
  security_groups = ["sg-017c097bb1674f881"]
  key_name = "sshkey1"
  tags = {
    Name = "newEC2"
  }
}
