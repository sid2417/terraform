resource "aws_instance" "db" { 
    #count = 3
    count = length(var.instance_count)
    ami = "ami-041e2ea9402c46c32"  
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]
    instance_type = "t2.micro"

    tags = {
        Name = var.instance_count[count.index]
    }
}

resource "aws_security_group" "allow_ssh" {
    name = "allow_ssh"
    description = "allowing SSH access"

   
    ingress {
        from_port        = 22
        to_port          = 22
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
    }

    egress {
        from_port        = 0 
        to_port          = 0
        protocol         = "-1" 
        cidr_blocks      = ["0.0.0.0/0"]
    }

    tags = {
        Name = "allow_ssh"
        CreatedBy = "Siddhartha"
    }
}