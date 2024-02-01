provider "aws" {
  region = "us-west-2"  # Set your desired region
  access_key = "AKIA46A62KETEWHLYJBO"
  secret_key = "L7bX6/XR8jzf7Q2EwiLKAxPhRTy8MiQdYcQz10IN"
  assume_role {
    role_arn = "arn:aws:iam::889122869542:role/mukesh-assume-role"
  }
}

resource "aws_instance" "Testing_instance" {
  ami           = "ami-0c7217cdde317cfec"  # Specify the AMI ID
  instance_type = "t2.micro"               # Specify the instance type

  tags = {
    Name = "TestingInstance"
  }
}
