provider "aws" {
     region = "us-east-1"
}

module "ec2-instance" {
    source = "./module/ec2"
    ami_value = "ami-04b4f1a9cf54c11d0"
    instance_typevalue = "t2.micro"
}