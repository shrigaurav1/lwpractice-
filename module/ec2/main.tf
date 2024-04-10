provider "aws" {
    access_key = "AKIAZI2LEWECW4NOWGY6"
    
}

resource "aws_instance" "ec2_Gg" {
    ami = "ami-07e1aeb90edb268a3"
    instance_type = "t2.micro"
    
}