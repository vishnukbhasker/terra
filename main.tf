provider "aws" {
  region = "eu-north-1"
}

resource "ec2_instance" "example" {
  ami_value = "ami-075449515af5df0d1" # replace this
  instance_type_value = "t3.micro"
  subnet_id_value = "subnet-0df037d5b98ca8043". # replace this
}
