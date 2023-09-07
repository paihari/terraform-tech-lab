provider "aws" {
    region = "eu-central-1"
    access_key = "<<ACCESS_KEY>>"
    secret_key = "<<ACCESS_SECRET>>"

  
}

resource "aws_eip" "mylb" {
    vpc = true
  
}

output "eip" {
    value = aws_eip.mylb.public_ip
  
}

resource "aws_s3_bucket" "mybucket" {
    bucket = "bucket-s3-attributes"

}

output "mybucket" {
    value = aws_s3_bucket.mybucket.bucket_domain_name
  
}
