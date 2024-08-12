# instance creation
# Instance name
# ami id
# instance size/type
#SG




resource "aws_instance" "expense" {
    count = length(var.instance_name)
    ami = local.image_id
    vpc_security_group_ids = [local.sg_id] # security group is list

    # In locals count and count.index is not working
    # For looping purpose we declared here variables
    instance_type = var.instance_name[count.index] == "db" ? "t3.small" : "t3.micro"
    

    #tags = local.tags

    tags = merge(local.common_tags,{
        Name = var.instance_name[count.index]
        Module = var.instance_name[count.index]

    }
    )
    
    #  tags = merge(var.common_tags,{
    #     Name = var.instance_name[count.index]
    #     Module = var.instance_name[count.index]

    # })
}