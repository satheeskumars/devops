provider "aws" {
    region = "ap-south-1"
}

variable "name" {
    description = "terraform"
}

resource "aws_instance" "admin_test" {
    ami = "ami-0567e0d2b4b2169ae"
    instance_type = "t2.micro"
    key_name = "terraform"

    tags = {
            Name = var.name
    }
}
