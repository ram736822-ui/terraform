resource "aws_ebs_volume" "honda_ebs" {
  availability_zone = var.availability_zone
  size              = var.size
  type              = var.volume_type
  tags              = var.tag

}

resource "aws_volume_attachment" "honda_ebs_attach" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.honda_ebs.id
  instance_id = aws_instance.honda_server.id
}