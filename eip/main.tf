provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "ec2" {
    ami = "ami-005f9685cb30f234b"
    instance_type = "t2.micro"
}

resource "aws_eip" "elasticeip" {
    instance = aws_instance.ec2.id
}

output "EIP" {
    value = aws_eip.elasticeip.public_ip
}