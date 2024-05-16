terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.49.0"

    }
  }
}

provider "aws" {
  region     = "us-east-1"
  access_key = "your aws access key "
  secret_key = your aws secret key""
}
