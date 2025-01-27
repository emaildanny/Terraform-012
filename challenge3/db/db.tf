resource "aws_instance" "db" {
    ami = "ami-005f9685cb30f234b"
    instance_type = "t2.micro"

    tags = {
        Name = "DB Server"
    }
}

output "PrivateIP" {
    value = aws_instance.db.private_ip
}