variable "ami" {
  default = "ami-0fd6b4bfb40773c2d"
}
variable "instance_type" {
  default = "t3.micro"
}
variable "key_name" {
  default = "value"
}
variable "security_groups" {
  default = ["honda_sg"]
}
variable "tagname" {
  default = "honda_server"
}

variable "availability_zone" {
  default = "us_east-1a"
}
variable "size" {
  default = "2"
}
variable "volume_id" {
  default = "gp2"
}
variable "tag" {
  default = {
    Name = "honda-ebs"
  }
}