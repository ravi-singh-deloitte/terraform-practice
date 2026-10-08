resource "aws_instance" "this" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = [var.sg_id]
  associate_public_ip_address = false

  # Enforce IMDSv2 — blocks SSRF-based credential theft via metadata service
  metadata_options {
    http_tokens                 = "required"
    http_put_response_hop_limit = 1
  }

  # Encrypt root volume at rest
  root_block_device {
    encrypted = true
  }

  tags = {
    Name        = var.instance_name
    Environment = var.environment
  }
}
