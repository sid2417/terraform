variable "ami_name" {
    type = string
    default = "ami-041e2ea9402c46c32"

}

variable "instance_type" {
    type = string
    default = "t3.micro"
    
}

variable "tags" {
    
    default = {
        Name = "db"
    }
  
}


variable "prot" {
    type = number
    default = 22
  
}

variable "protocol" {
    type = string
    default = "tcp"
  
}

variable "sg_name" {
    type = string
    default = "TerraSG"
  
}


variable "sg_description" {
    type = string
    default = "Allowing ingress and all egress"
  
}

variable "allowed_cidr" {
    type = list(string)
    default = ["0.0.0.0/0"]
}