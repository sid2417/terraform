resource "aws_instance" "expense" {
    #ami = "ami-041e2ea9402c46c32"
    #ami = data.aws_ami.output_ami_id_details.id
   # ami_data_info
    ami = data.aws_ami.ami_data_info.id # here we fetch the information from data source
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-0d945c5ec2a256613"]
    tags = {
      Name = "DataSource"
    }
  
}

# resource "aws_instance" "db" {

#     ami = data.aws_ami.ami_id.id
#     vpc_security_group_ids = ["sg-0fea5e49e962e81c9" ]
#     instance_type = "t3.micro"
#     tags = {
#         Name = "data-source-practice"
#     }
# }

# data "aws_ami" "ami_data_info" 
# data "aws_vpc" "default" 


# output "output_ami_id_details" {
#     value = data.aws_ami.ami_data_info.id
# }

# output "output_vpc_details" {
#     value = data.aws_vpc.default
# }