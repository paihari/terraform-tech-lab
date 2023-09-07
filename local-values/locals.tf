provider "aws" {
    region = "eu-central-1"
    access_key = "<<ACCESS_KEY>>"
    secret_key = "<<ACCESS_SECRET>>"

  
}

resource "aws_instance" "ec2-1" {
    ami = "ami-04e601abe3e1a910f"
    instance_type = "t2.micro"
    tags = local.common_tags
}

resource "aws_ebs_volume" "myebs" {
    availability_zone = "eu-central-1a"
    size = 10
    tags = local.common_tags
  
}

locals {
  common_tags = {
    Owner = "Team1"
    service = "engineering"
  }
}