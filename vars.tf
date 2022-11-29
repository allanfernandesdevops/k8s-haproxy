variable "region" {
    default = "us-east-1"
}

variable "ami_id" {
    default = "ami-08c40ec9ead489470"
}

variable "instance_type" {}


variable "cidr_block" {
  default = "172.31.128.0/20"
}

variable "availability_zone" {
  default = "us-east-1b"
}

variable "vpc_id" {
  default = "vpc-0c6c9dbeb3e8b0692"
}