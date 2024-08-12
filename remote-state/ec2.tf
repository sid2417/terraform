resource "aws_instance" "remote" {
    ami = "ami-041e2ea9402c46c32"
    vpc_security_group_ids = ["sg-0d945c5ec2a256613"]
    instance_type = "t3.micro"

    tags = {
      Name = "remote"
      
    }
  
}