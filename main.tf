terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.41.0"
    }
  }
}

provider "aws" {
  # Configuration options
  profile = "default"
}

resource "aws_instance" "foo" {
  ami           = "ami-02d7fd1c2af6eead0" # us-west-2
  instance_type = "t2.micro"
}