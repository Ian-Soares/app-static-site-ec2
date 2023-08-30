variable "instance_ami" {
  description = "AMI ID"
  default     = "ami-02e136e904f3da870"
  type        = string
}

variable "instance_type" {
  description = "Instance Size"
  default     = "t2.micro"
  type        = string
}

variable "instance_user_data" {
  description = "User Data"
  default     = <<EOF
#!/bin/bash
echo "{Status: OK}"
EOF
  type        = string
}

variable "instance_key_name" {
  description = "Key Name"
  default     = ""
  type        = string
}

variable "subnet_pub_id" {
  description = "Public Subnet ID"
  default     = ""
  type        = string
}

variable "vpc_security_group_ids" {
  description = "Security Group ID"
  default     = ""
  type        = string
}
