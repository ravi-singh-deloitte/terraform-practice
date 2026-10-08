variable "environment" {
  description = "Deployment environment (dev or prod)"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "instance_name" {
  description = "Name tag for the EC2 instance"
  type        = string
}

variable "subnet_id" {
  description = "Private subnet ID (from vpc module)"
  type        = string
}

variable "sg_id" {
  description = "Security group ID (from vpc module)"
  type        = string
}
