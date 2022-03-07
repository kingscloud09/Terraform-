terraform {
  required_providers {
      aws = {
          source = "hashicorp/aws"
          version = "~> 3.0"
      }
  }
}

provider "aws" {
    region = "us-east-1"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "accessbukcet5646"
  tags = {
    description = "bucket for fun"
  }
}

resource "aws_s3_bucket_object" "my_object" {
  bucket = "my_object"
  key    = "this_is_my_first_object"
  source = aws_s3_bucket.my_bucket.id
}