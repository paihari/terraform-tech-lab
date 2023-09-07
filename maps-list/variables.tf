variable "list" {
    type = list
    default = ["m5.large", "m5.xlarge", "t2.micro"]
  
}

variable "types" {
    type = map
    default = {
        eu-central-1 = "t2.micro"
        us-west-2 = "t2.nano"
        us-south-1 = "t2.small"
    }
  
}