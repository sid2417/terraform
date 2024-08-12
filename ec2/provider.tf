# terraform {
#   required_providers {
#     aws = {
#       source = "hashicorp/aws"
#       version = "5.59.0"
#     }
#   }
# }

# provider "aws" {
#     region = "us-east-1"
#   # Configuration options
# # }


# # In this provider don't mention your credentials
# # region only mention

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.60.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  # Configuration options
  
}