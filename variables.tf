# variables.tf
variable "region" {
  default = "ap-south-1"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "public_subnet1_cidr" {
  default = "10.0.0.0/24"
}

variable "private_subnet1_cidr" {
  default = "10.0.16.0/20"
}

variable "private_subnet2_cidr" {
  default = "10.0.32.0/20"
}