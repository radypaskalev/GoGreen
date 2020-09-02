variable "aws_region" {
  description = "The AWS region to create things in."
  default     = "us-west-1"
}

# subnets to be uesed in web tier, provide by Farruh
variable "web-subnets" {
  description = "subnets used for web tier"
  default     = "subnet-02246346e41f26b7b,subnet-0166320b56ea2c7c3"
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
  type        = string
  default     = "CA_key"
  description = "my key is N CA"

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
  default     = "1"
}

variable "alarms_sms" {
  description = "sms to use to send notifications"
  default     = "+17033091494"
}

# for the purpose of validating NACLs, added VPC variable:
variable "vpc_id" {
  description = "the VPC that Farruh is creating"
}

#Note - terraform doesnt support email as SNS requires validation
################ please erase below, another option for local email sns set up #######

#variable "sns_subscription_email_address_list" {
#type = string
# description = "List of email addresses as string(space separated)"
#  default = "rpaskalev@premieraquatics.com"
#}