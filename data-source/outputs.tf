output "output_ami_id_details" {
    value = data.aws_ami.ami_data_info.id
}

output "output_vpc_details" {
    value = data.aws_vpc.vpc_data_info
}

