terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.53.0"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "myec2" {
  ami = "ami-082b5a644766e0e6f"
  for_each = {
    VM1 = "t2.micro"
    VM2 = "t2.medium"
}
instance_type = each.value


tags = {
    Name = each.key
}
}

