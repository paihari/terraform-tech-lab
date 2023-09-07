provider "aws" {
    region = "eu-central-1"
    access_key = "<<ACCESS_KEY>>"
    secret_key = "<<ACCESS_SECRET>>"

  
}

resource "aws_instance" "ec2-1" {
    ami = "ami-04e601abe3e1a910f"
    instance_type = "t2.micro"
    
}


resource "aws_instance" "ec2-2" {
    ami = "ami-04e601abe3e1a910f"
    instance_type = "t2.micro"
}
