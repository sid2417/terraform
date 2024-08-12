variable "instance_name" {
    type = list(string)
    default = ["db", "backend", "frontend"]
  
}

variable "common_tags" {
    default = {
        Project = "Expense"
        Environment = "Dev"
        Terraform = "true"
    }
}

#r53 variables
variable "zone_id" {
    default = "Z07446043T80DLS7R4CPO"
}

variable "domain_name" {
    default = "happywithyogamoney.fun"
}