terraform {
  backend "s3" {
    bucket     = "remote-tf-state-demo-101"
    key        = "s3remotestate.tf"
    region     = "eu-central-1"
    access_key = "<<ACCESS_KEY>>"
    secret_key = "<<ACCESS_SECRET>>"


  }
}