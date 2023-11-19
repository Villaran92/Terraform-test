resource "aws_instance" "ec2_dev" {
  ami           = "ami-05c13eab67c5d8861"
  instance_type = "t2.micro"
}
