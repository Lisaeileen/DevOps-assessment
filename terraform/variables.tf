variable "aws_region" {
    description = "AWS region to deploy resource"
    type = string
    default = "us-east-1"
}

variable "lisa-environment" {
    description = "environment (development, staging, production)"
    type = string
}

variable "lisa-s3-bucket-log" {
    description = "s3 bucket to store my log"
    type = string 
}

variable "lisa-s3-bucket-site" {
    description = "s3 bucket to store my site"
    type = string 
}
