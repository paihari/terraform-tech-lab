provider "aws" {
    region = "eu-central-1"
    access_key = "<<ACCESS_KEY>>"
    secret_key = "<<ACCESS_SECRET>>"

  
}

locals {
  time = formatdate("DD MMM YYYY hh:mm ZZZ", timestamp())
}

variable "region" {
    type = string
    default = "eu-central-1"
  
}

variable "ami" {
    type = map
    default = {
       "us-east-1" = "ami-04e601abe3e1a910f"
       "us-west-2" = "ami-04e601abe3e1a910f"
       "eu-central-1" = "ami-04e601abe3e1a910f"
    }

}

resource "aws_instance" "ec2-2" {
    ami = lookup(var.ami, var.region)
    instance_type = "t2.micro"
}


output "timstamp" {

  value = local.time
}
