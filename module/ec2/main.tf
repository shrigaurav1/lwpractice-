provider "aws" {
    region = "ap-southeast-2"
    
}

resource "aws_instance" "ec2_Gg" {
    ami = "ami-07e1aeb90edb268a3"
    instance_type = "t2.micro"
    
}
