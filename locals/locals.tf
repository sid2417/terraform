# when you declared anything those are must be in braces{}
# whatever you mention those things are must be in locals { //Here you declare // tags also }

locals {
  image_id = "ami-041e2ea9402c46c32"
  sg_id = "sg-0d945c5ec2a256613"



# tags = {
#     Name = "locals"
#   }


common_tags = {
    Project = "Expense"
    Environment = "Dev"
    Terraform = "true"
}

        
}