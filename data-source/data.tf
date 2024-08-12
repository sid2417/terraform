data "aws_ami" "ami_data_info" {

    most_recent = true
    owners = ["973714476881"]

    filter {
        name   = "name"
        values = ["RHEL-9-DevOps-Practice"]
    }

    filter {
        name   = "root-device-type"
        values = ["ebs"]
    }


    filter {
        name = "virtualization-type"
        values = [ "hvm" ]
        
    }

   
    # filter {
    #   name = "source"
    #   values = ["973714476881/RHEL-9-DevOps-Practice"]
    # }

}

data "aws_vpc" "vpc_data_info" {
    default = true
  
}