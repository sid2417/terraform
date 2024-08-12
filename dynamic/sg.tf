resource "aws_security_group" "sg_dynamic" {
    name = "sg_dynamic"
    description = "sg_dynamic SSH access for inbound 80 22 8080 3306 and all outbound"

    #terraform block # Here no values directly start with braces this is a block
    #when ever repeated code in block, at the time we use dynamic block, to avoid duplicate/repeated code


    # dynamic is the key word
    # repeated code you keep it in content {//Here you keep repeated code}
    dynamic ingress {
        for_each = var.inbound
        content {
            from_port        = ingress.value["port"]  #each.value["<key-name>"]
            to_port          = ingress.value["port"]
            protocol         = ingress.value["protocol"]
            cidr_blocks      = ingress.value["cidr_blocks"]
          
        }
        
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

# In security groups, tags Name is normal name, resourse name is security group name

# But in EC2 creation tags name is considered as instance names