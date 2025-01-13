
provider "aws" {
  region = "eu-north-1" 
   
}

resource "aws_instance" "example" {
  ami           = "ami-075449515af5df0d1" 
  instance_type = "t3.micro"  
  key_name      = "adminkey"

  tags = {
    Name = "Jenkins"
  }
}

output "instance_public_ip" {
  value = aws_instance.example.public_ip
}
