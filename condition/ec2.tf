resource "aws_instance" "db" { 
    
    ami = var.image_ids  
   
    instance_type = var.instance_names == "DB1" ? "t2.micro" : "t3.micro"

    tags = {
      Name = "DataBase"
    }

  
}


# expression ? "this will run if expression is true" : "run if false"

# instance_type = var.instance_names= "DB1" ? "t2.micro" : "t3.micro"



# resource "aws_instance" "db" {
#     ami = var.image_id
#     instance_type = var.instance_name == "db" ? "t3.small" : "t3.micro"
# }


# variable "image_id" {
#   type        = string #optional
#   default     = "ami-090252cbe067a9e58" #optional
#   description = "RHEL-9 AMI ID" #optional
# }

# variable "instance_type" {
#     default = "t3.micro"
#     type = string
# }

# variable "instance_name" {
#     default = "backend"
# }