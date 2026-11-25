resource "aws_instance" "app_a" {
  ami                    = "ami-01e04dba04096a3ca"
  instance_type          = "t3.micro"
  subnet_id              = aws_subnet.app_a.id
  private_ip             = "10.10.11.94"
  vpc_security_group_ids = [aws_security_group.app.id]
  iam_instance_profile   = "Acme-EC2-SSM-Profile"

  associate_public_ip_address = false
  monitoring                  = false
  source_dest_check           = true

  metadata_options {
    http_endpoint               = "enabled"
    http_tokens                 = "required"
    http_put_response_hop_limit = 2
    instance_metadata_tags      = "disabled"
  }

  tags = {
    Name = "Acme-Private-App-A"
  }
}

resource "aws_instance" "app_b" {
  ami                    = "ami-01e04dba04096a3ca"
  instance_type          = "t3.micro"
  subnet_id              = aws_subnet.app_b.id
  private_ip             = "10.10.12.144"
  vpc_security_group_ids = [aws_security_group.app.id]
  iam_instance_profile   = "Acme-EC2-SSM-Profile"

  associate_public_ip_address = false
  monitoring                  = false
  source_dest_check           = true

  metadata_options {
    http_endpoint               = "enabled"
    http_tokens                 = "required"
    http_put_response_hop_limit = 2
    instance_metadata_tags      = "disabled"
  }

  tags = {
    Name = "Acme-Private-App-B"
  }
}

resource "aws_instance" "wireguard" {
  ami                         = "ami-01e04dba04096a3ca"
  instance_type               = "t3.micro"
  subnet_id                   = aws_subnet.public_a.id
  private_ip                  = "10.10.1.127"
  vpc_security_group_ids      = [aws_security_group.wireguard.id]
  iam_instance_profile        = "Acme-EC2-SSM-Profile"
  associate_public_ip_address = true
  monitoring                  = false
  source_dest_check           = false

  metadata_options {
    http_endpoint               = "enabled"
    http_tokens                 = "required"
    http_put_response_hop_limit = 2
    instance_metadata_tags      = "disabled"
  }

  tags = {
    Name = "Acme-WireGuard-Gateway"
  }
}
