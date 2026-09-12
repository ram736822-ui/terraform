resource "aws_instance" "honda_server" {
    ami = var.ami
    instance_type = var.instance_type
    key_name = var.key_name
    subnet_id = aws_subnet.honda_subnet.id
    vpc_security_group_ids = [aws_security_group.honda_sg.id]
    tags = {
        Name = var.tagnameinstance
    }
  
}