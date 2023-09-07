provider "aws" {
    region = "eu-central-1"
    access_key = "<<ACCESS_KEY>>"
    secret_key = "<<ACCESS_SECRET>>"

  
}

resource "aws_security_group" "vardemo" {
    name = "my-va-demo"
    ingress  {
        from_port = 443
        to_port = 443
        protocol = "tcp"
        cidr_blocks = [var.myip]

    }

    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = [var.myip]
    }

}