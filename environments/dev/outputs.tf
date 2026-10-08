output "vpc_id" {
  description = "VPC ID"
  value       = module.vpc.vpc_id
}

output "private_subnet_id" {
  description = "Private subnet ID"
  value       = module.vpc.private_subnet_id
}

output "security_group_id" {
  description = "EC2 security group ID"
  value       = module.vpc.security_group_id
}

output "instance_id" {
  description = "EC2 instance ID"
  value       = module.ec2.instance_id
}

output "private_ip" {
  description = "EC2 private IP"
  value       = module.ec2.private_ip
}
