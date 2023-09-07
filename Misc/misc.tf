provider "aws" {
    region = "eu-central-1"
    access_key = "<<ACCESS_KEY>>"
    secret_key = "<<ACCESS_SECRET>>"

  
}

resource "aws_iam_user" "user" {
    name = "iamuser.${count.index}"
    count = 3

  
}

output "arns" {
    value = aws_iam_user.user[*].arn
  
}