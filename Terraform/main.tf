provider "aws" {
  version = "~> 2.0"
  region  = "us-east-1"
}

resource "aws_instance" "Docker" {
  ami = "ami-0ac80df6eff0e70b5"
  instance_type = "t2.micro"
  key_name = var.key_name
  tags = {
    Name = "Docker"
  }
  vpc_security_group_ids = [aws_security_group.acesso-ssh.id]
}
