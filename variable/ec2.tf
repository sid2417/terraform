#1. command line
#2. tfvars
#3. ENV variable
#4. variable default value




resource "aws_instance" "db" {
    ami = var.ami_name
    instance_type = var.instance_type
    vpc_security_group_ids = [aws_security_group.TerraSG.id]
    tags = var.tags
  
}


resource "aws_security_group" "TerraSG" {
    name = var.sg_name
    description = var.sg_description
    tags = {
        Name = "TerraSG"
        CreatedBy = "Siddhartha"
    }

    ingress {
    from_port        = var.prot
    to_port          = var.prot
    protocol         = var.protocol
    cidr_blocks      = var.allowed_cidr
    
  }

    egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = var.allowed_cidr
    
  }

    
}