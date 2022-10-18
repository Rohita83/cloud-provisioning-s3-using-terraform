variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "S3 bucket name"
  type        = string
  default     = "test-orchestrate-bucket-test"
}

variable "my_ip" {
   description = "Your IP address"
   type = string
   sensitive = true
}

variable "vpc_cidr_block" {
   description = "CIDR block for VPC"
   type = string
   default = "10.0.0.0/16"
}

variable "jenkins_subnet_cidr_block" {
   description = "CIDR block for public subnet"
   type = string
   default = "10.0.1.0/24"
}

variable "management_name" {
   default = "Demo-01"
}

variable "project_name" {
   description = "Project Name"
   type = string
   default = "Demo"
}

# variable "aws_access_key" {}
# variable "aws_secret_key" {}

variable "jenkins_size" {
  default = "t2.micro"
  description = "machine type to run Jenkins server"
}

variable "jenkins_ami_id" {
  default = "ami-0149b2da6ceec4bb0"
  description = "Jenkins AMI ID"  
}

# variable "role_name" {
#   default = "SSM_Profile" 
# }

variable "key_name" {
   default = "wo_kp"
}

variable "aws_env" {
  description = "AWS env"
  type        = string
  default     = "dev"
}


