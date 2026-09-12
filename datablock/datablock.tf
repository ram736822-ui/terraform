data "aws_ami" "instance_launch" {
  most_recent = true
  owners      = ["self"]
  filter {
    name   = "name"
    values = var.value
  }
}

resource "aws_instance" "datablock" {
  ami                    = data.aws_ami.instance_launch.id
  instance_type          = var.machinetype
  key_name               = var.keyname
 #
  tags = {
    Name = var.mytag
  }
}