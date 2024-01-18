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

# rds variables
variable "database_snapshot_identifier" {
  type        = string
  default     = "arn:aws:rds:us-east-1:155266142766:snapshot:fleetcart-final-snapshot" # replace with rds snapshot ARN
  description = "the database snapshot arn"
}

variable "database_instance_class" {
  type        = string
  default     = "db.t2.micro"
  description = "the database instance type"
}

variable "database_instance_identifier" {
  type        = string
  default     = "dev-rds-db" #replace with Instance/Cluster Name
  description = "the database instance identifier"
}

variable "multi_az_deployment" {
  type        = bool
  default     = false
  description = "create a standby db instance"
}

# application load balancer variables
variable "ssl_certificate_arn" {
  type        = string
  default     = "arn:aws:acm:us-east-1:155266142766:certificate/c74d6a86-1cdd-4cd4-9b31-96bd9e4f82f0"
  description = "ssl certificate arn"
}

# sns topic variable
variable "operator_email" {
  type        = string
  default     = "jcooke716@gmail.com"
  description = "a valid email address"
}