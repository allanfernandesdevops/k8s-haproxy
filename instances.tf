resource "aws_instance" "masters" {
  count                       = 3
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = aws_subnet.subnet.id
  security_groups             = [aws_security_group.sg_k8s.id]
  associate_public_ip_address = true
  key_name                    = "ubuntu"
  tags = {
    Name                      = "k8s-master-0${count.index}"
  }
}

resource "aws_instance" "workers" {
  count                       = 3
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = aws_subnet.subnet.id
  security_groups             = [aws_security_group.sg_k8s.id]
  associate_public_ip_address = true
  key_name                    = "ubuntu"
  tags = {
    Name                      = "k8s-workers-0${count.index}"
  }
}

resource "aws_instance" "haproxy" {
  ami                         = var.ami_id
  instance_type               = "t3.micro"
  subnet_id                   = aws_subnet.subnet.id
  security_groups             = [aws_security_group.sg_k8s.id]
  associate_public_ip_address = true
  key_name                    = "ubuntu"
  tags = {
    Name                      = "haproxy"
  }

}



