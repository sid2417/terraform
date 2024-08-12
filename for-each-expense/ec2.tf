# Creating SG # AMI # Instance Type # Tags
# In your code you are looping Map better to use for-each loop
# In your code you are looping List better to use Count loop
# "aws_ami" "ami_data_info"


# backend = "t3.micro"
#         db = "t3.small"
#         frontend = "t3.micro"

resource "aws_instance" "expense" {
    for_each = var.instance_names  # each.key and each.value
    ami = data.aws_ami.ami_data_info.id
    instance_type = each.key == "db" ? "t3.small" : "t3.micro"
    vpc_security_group_ids = [aws_security_group.sg_foreach.id]
    tags = merge(var.common_tags,{
        Name = each.key
        Module = each.key
    })
}

resource "aws_security_group" "sg_foreach" {
    name = "sg_foreach"
    description = "allow sg_foreach inbound and all outbound rules"
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]

    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]

    }
    tags = {
        Name = "sg_foreach"
        CreatedBy = "Siddhartha"
    }
  
}