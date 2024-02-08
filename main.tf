provider "aws" {
  region = "us-east-1"  # Set your desired region
  access_key = "AKIA46A62KETIMG45G6E"
  secret_key = "DAgJA3bh/Brk6IGIamhWSBocekOsxIbWqt5Nagn0"
  assume_role {
    role_arn = "arn:aws:iam::889122869542:role/ec2-full-access"
  }
}

resource "aws_instance" "Testing_instance" {
  ami = "ami-0c7217cdde317cfec"  # Specify the AMI ID
  instance_type = "t2.micro"     # Specify the instance type

  tags = {
    Name = "TestingInstance"
  }
}
