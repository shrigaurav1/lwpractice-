provider "aws" {
  region = "ap-southeast-2"
}

resource "aws_launch_template" "template" {
  name_prefix     = "test"
  image_id        = "ami-07e1aeb90edb268a3"
  instance_type   = "t2.micro"
}

resource "aws_autoscaling_group" "autoscale" {
  name                  = "test-autoscaling-group"  
  availability_zones    = ["ap-southeast-2"]
  desired_capacity      = 3
  max_size              = 6
  min_size              = 3
  health_check_type     = "EC2"
  termination_policies  = ["OldestInstance"]
  
}
