provider "aws" {
    region = "eu-central-1"
    access_key = "<<ACCESS_KEY>>"
    secret_key = "<<ACCESS_SECRET>>"

  
}


resource "aws_instance" "myec2" {
    ami = "ami-0766f68f0b06ab145"
    key_name = "key-pair-bantwal"
    vpc_security_group_ids = ["sg-058f5ea63296d7411"]
    subnet_id = "sg-058f5ea63296d7411"
    instance_type = "t2.micro"
  
}