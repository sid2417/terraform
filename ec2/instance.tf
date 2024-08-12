# First we need to create security group
    ## inbound
    ## outbound
    ## name
resource "aws_security_group" "TerraSG" {
    name = "TerraSG"
    description = "allow TerraSG inbound and all outbound rules"
    tags = {
        Name = "SID"
    }

    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}

# To create Instances
    ## sg
    ## name
    ## ami
    ## size of instance
    

resource "aws_instance" "Frontend" {
    ami = "ami-041e2ea9402c46c32"
    instance_type = "t2.micro"
    vpc_security_group_ids = [aws_security_group.TerraSG.id] # Here SG is list[]
    tags = {
        Name = "Frontend1"
    }
}