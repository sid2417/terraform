# resource <resource-type> <resource-name>
resource "aws_instance" "db" { # Here this db name is terraform name, terraform considered  this as a name

    ami = "ami-041e2ea9402c46c32"  # while search mention public, and type devops-practice,you will get your ami
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]
    instance_type = "t3.micro"

    tags = {
        Name = "db" # Here this name db is AWS name
    } # In value starts with {} flower braces that is called as map
}

resource "aws_security_group" "allow_ssh" {
    name = "allow_ssh"
    description = "allowing SSH access"

    #terraform block # Here no values directly start with braces this is a block
    ingress {
        from_port        = 22
        to_port          = 22
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
    }

    egress {
        from_port        = 0 # from 0 to 0 means, opening all protocols
        to_port          = 0
        protocol         = "-1" # -1 all protocols
        cidr_blocks      = ["0.0.0.0/0"]
    }

    tags = {
        Name = "allow_ssh"
        CreatedBy = "Siddhartha"
    }
}