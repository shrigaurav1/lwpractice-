provider "aws" {
    region = "ap-southeast-2"
}
resource "aws_s3_bucket" "example" {
  bucket = "gaurav-tf-test-bucket"

  tags = {
    Name        = "test bucket"
    
  }
}