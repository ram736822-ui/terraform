variable "availability_zone" {
  default = "us-west-2a"
}
variable "size" {
  default = "2"
}
variable "volume_type" {
  default = "gp2"
}
variable "tag" {
  default = {
    Name = "honda-ebs"
  }
}
variable "cidr" {
  default = ["0.0.0.0/0"]
}
variable "sgname" {
  default = "honda-sg"
}
variable "vpcname" {
  default = "honda-vpc"
}
variable "subnetname" {
  default = "honda-subnet"
}
variable "subnetname2" {
  default = "honda-subnet2"
}
variable "igwname" {
  default = "honda-igw"
}
variable "cidr_vpc" {
  default = "10.0.0.0/20"
}
variable "honda_route_table" {
  default = "honda-route-table"
}
variable "cidr_subnet"{
  default = "10.0.1.0/24"
}
variable "cidr_subnet2"{
  default = "10.0.2.0/24"
}
variable "azs" {
  default = "us-west-2a"
}
variable "azs2" {
  default = "us-west-2b"
}
variable "cidr_route" {
  default = "0.0.0.0/0"
}
variable "ami" {
  default = "ami-071d641d6d46d34f8"
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
variable "tagnameinstance" {
  default = "honda_server"
}