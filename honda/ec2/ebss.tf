resource "aws_ebs_volume" "honda-ebs" {
  availability_zone = var.availability_zone
  size              = var.size
  type              = var.volume_id
  tags              = var.tag

}

resource "aws_volume_attachment" "honda-server-ebs-attach" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.honda-ebs.id
  instance_id = aws_instance.honda_server.id
}