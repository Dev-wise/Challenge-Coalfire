
module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "single-instance"

  ami                    = "ami-02185940fb1e2cdb9" #RedHat AMI
  instance_type          = "t2.micro"
  #key_name               = "user1"
  monitoring             = true
  vpc_security_group_ids = ["sg-0fc83ad7789a80455"]
  subnet_id              = "subnet-0b77d288726c0b2ce"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}


resource "aws_ebs_volume" "EBS20" {
  availability_zone = "us-east-1b"
  size              = 40

  tags = {
    Name = "ebs20"
  }
}

resource "aws_volume_attachment" "EBSattach" {
  device_name = "/dev/sdc"
  volume_id   = aws_ebs_volume.EBS20.id
  instance_id = "i-0f99ffc56d5c24597"
}