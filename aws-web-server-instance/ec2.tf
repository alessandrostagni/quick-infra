resource "aws_instance" "ec2_instance" {
  ami           = "ami-0210560cedcb09f07" # Amazon Linux AMI
  instance_type = "t2.nano"

  credit_specification {
    cpu_credits = "unlimited"
  }

  subnet_id = aws_subnet.subnet_a.id
  vpc_security_group_ids = [aws_security_group.allow_http.id]
  
  # Uncomment the attribute below if you need SSH access to the instance
  key_name = aws_key_pair.ssh_key.key_name
  
  associate_public_ip_address = true
}

resource "aws_key_pair" "ssh_key" {
  key_name   = "${var.stack_name}-key"
  public_key = var.ssh_public_key
}