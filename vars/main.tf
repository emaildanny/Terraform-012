provider "aws" {
    region = "us-east-1"
}

variable "number_of_servers" {
    type = number
}

resource "aws_instance" "ec2" {
    ami = "ami-005f9685cb30f234b"
    instance_type = "t2.micro"
    count = var.number_of_servers
}