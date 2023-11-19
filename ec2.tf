resource "aws_instance" "ec2_dev" {
  ami           = "ami-05c13eab67c5d8861"
  instance_type = "t2.micro"
}

resource "aws_security_group" "ssh-http" {
  name   = "allow_ssh-http"

  ingress {
    description = "http"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_ssh-http"
  }
}
