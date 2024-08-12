# AMI # Instance Type # Tags

variable "image_id" {
    type = string
    default = "value"
  
}

variable "instance_names" {
    type = map
    default = {
        backend = "t3.micro"
        db = "t3.small"
        frontend = "t3.micro"
    }
}

variable "common_tags" {
    type = map
    default = {
        Project = "Expense"
        Terraform = "true"
    }
}

variable "instance_type" {
    default = "t3.small"
    type = string
}

variable "domain_name" {
    type = string
    default = "happywithyogamoney.fun"
  
}

variable "zone_id" {
    type = string
    default = "Z07446043T80DLS7R4CPO"
}