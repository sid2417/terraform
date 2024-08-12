#3 instance we need create db back front
# Rout 53 records
# if db == t3.small else t3.micro
# ami id   ##SG   ##



resource "aws_instance" "expense" { 

    count = length(var.instance_name)

    ami = "ami-041e2ea9402c46c32"  
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]
    instance_type = var.instance_name[count.index] == "db" ? "t3.small" : "t3.micro"

    tags = merge(var.common_tags,{
        Name = var.instance_name[count.index]
        Module = var.instance_name[count.index]

    })
    
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