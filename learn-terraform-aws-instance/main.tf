terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "private"
  region  = "ap-northeast-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0e820b4a90c1592be"
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name
  }
}