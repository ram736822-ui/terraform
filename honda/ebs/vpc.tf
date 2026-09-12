resource "aws_vpc" "honda_vpc" {
    cidr_block = var.cidr_vpc
    tags = {
        Name = var.vpcname
    }
}
resource "aws_subnet" "honda_subnet" {
    vpc_id = aws_vpc.honda_vpc.id
    cidr_block = var.cidr_subnet
    availability_zone = var.azs
    map_public_ip_on_launch = true
    tags = {
        Name = var.subnetname
    }
}
resource "aws_subnet" "honda_subnet2" {
    vpc_id = aws_vpc.honda_vpc.id
    cidr_block = var.cidr_subnet2
    availability_zone = var.azs2
    map_public_ip_on_launch = true
    tags = {
        Name = var.subnetname2
    }
}
resource "aws_internet_gateway" "honda_igw" {
    vpc_id = aws_vpc.honda_vpc.id
    tags = {
        Name = var.igwname
    }
}
resource "aws_route_table" "honda_route_table" {
    vpc_id = aws_vpc.honda_vpc.id
    tags = {
        Name = "honda-route-table"
    }
    route {
        cidr_block = var.cidr_route
        gateway_id = aws_internet_gateway.honda_igw.id
    }
}
resource "aws_route_table_association" "honda_route_table_assoc" {
    subnet_id = aws_subnet.honda_subnet.id
    route_table_id = aws_route_table.honda_route_table.id
}
resource "aws_route_table_association" "honda_route_table_assoc2" {
    subnet_id = aws_subnet.honda_subnet2.id
    route_table_id = aws_route_table.honda_route_table.id
}
