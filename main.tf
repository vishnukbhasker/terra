
provider "aws" {
  region = "eu-north-1" # Replace with your preferred AWS region
}

resource "aws_instance" "example" {
  ami           = "ami-075449515af5df0d1" # Amazon Linux 2 AMI (Free-tier eligible)
  instance_type = "t3.micro"             # Free-tier instance type

  tags = {
    Name = "Simple-EC2-Instance"
  }
}

output "instance_public_ip" {
  value = aws_instance.example.public_ip
}
