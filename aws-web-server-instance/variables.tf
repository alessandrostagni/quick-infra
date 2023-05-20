variable "aws_region" {
  type = string
  description = "The region we are deploying against to."
}

variable "stack_name" {
  type = string
  description = "A stack name that function as identifier for resources."
  default = "aws-web-server"
}

variable "ssh_public_key" {
  type = string
  description = "SSH public key."
}