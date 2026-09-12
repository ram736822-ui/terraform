resource "aws_vpc" "new_honda_vpc" {
  cidr_block = "23.0.0.0/20"
  tags = {
    Name = "new-honda-vpc"
  }
}
resource "aws_subnet" "new_honda_subnet_public" {
  vpc_id                  = aws_vpc.new_honda_vpc.id
  cidr_block              = "23.0.1.0/24"
  availability_zone       = "us-west-2a"
  map_public_ip_on_launch = true
  tags = {
    Name = "new-honda-subnet-public"
  }
}
resource "aws_subnet" "new_honda_subnet_private" {
  vpc_id            = aws_vpc.new_honda_vpc.id
  cidr_block        = "23.0.2.0/24"
  availability_zone = "us-west-2a"
  tags = {
    Name = "new-honda-subnet-private"
  }
}
resource "aws_internet_gateway" "new_honda_igw" {
  vpc_id = aws_vpc.new_honda_vpc.id
  tags = {
    Name = "new-honda-igw"
  }
}
resource "aws_route_table" "new_honda_rt" {
  vpc_id = aws_vpc.new_honda_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.new_honda_igw.id
  }
}
resource "aws_route_table_association" "new_honda_rt_assoc" {
  route_table_id = aws_route_table.new_honda_rt.id
  subnet_id      = aws_subnet.new_honda_subnet_public.id
}