provider "aws" {
    region = "eu-central-1"
    access_key = "<<ACCESS_KEY>>"
    secret_key = "<<ACCESS_SECRET>>"

  
}

resource "aws_instance" "myec2" {
    ami = "ami-0766f68f0b06ab145"
    instance_type = "t2.micro"
  
}

resource "aws_eip" "myeip" {
    vpc = true
  
}

resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.myec2.id
  allocation_id = aws_eip.myeip.id
}

