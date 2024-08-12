variable "inbound" {
    type = list
    default = [ 
        {
        port = 3306
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        },

        {
        port = 8080
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        },

        {
        port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        },

        {
        port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        }
     ]
  
}
