variable "aws_region" {
  description = "The AWS region to create things in."
  default     = "us-west-1"
}

# Amazon Linux 2 AMI 2.0.20200722.0 x86_64 HVM 8GB
variable "aws_amis" {
  default = {
    "us-west-1" = "ami-05655c267c89566dd"
  }
}

variable "availability_zones" {
  default     = "us-west-1a,us-west-1b"
  description = "List of availability zones that we will use in N California "
}

variable "key_name" {
  description = "CA_key"
}

variable "instance_type" {
  default     = "t2.micro"
  description = "AWS instance type"
}

variable "asg_min" {
  description = "Min numbers of servers in ASG"
  default     = "1"
}

variable "asg_max" {
  description = "Max numbers of servers in ASG"
  default     = "2"
}

variable "asg_desired" {
  description = "Desired numbers of servers in ASG"
  default     = "2"
}
