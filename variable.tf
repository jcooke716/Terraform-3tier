# VPC variables
variable "vpc_cidr" {
  type        = string
  default     = "10.0.0.0/16"
  description = "vpc cidr block"
}

variable "public_subnet_az1_cidr" {
  type        = string
  default     = "10.0.0.0/24"
  description = "public subnet az1 block"
}

variable "public_subnet_az2_cidr" {
  type        = string
  default     = "10.0.1.0/24"
  description = "public subnet az2 block"
}

variable "private_app_subnet_az1_cidr" {
  type        = string
  default     = "10.0.2.0/24"
  description = "private app subnet az1 cidr block"
}

variable "private_app_subnet_az2_cidr" {
  type        = string
  default     = "10.0.3.0/24"
  description = "private app subnet az2 cidr block"
}

variable "private_data_subnet_az1_cidr" {
  type        = string
  default     = "10.0.4.0/24"
  description = "private data subnet az1 cidr block"
}

variable "private_data_subnet_az2_cidr" {
  type        = string
  default     = "10.0.5.0/24"
  description = "private data subnet az2 cidr block"
}

# security groups variable
variable "ssh_location" {
  type        = string
  default     = "0.0.0.0/0"
  description = "the ip address that can ssh into the ec2 instances"
}