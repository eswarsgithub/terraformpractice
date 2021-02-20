#vpc section
resource "aws_vpc" "myvpc" {
    cidr_block         = var.vpc_cidr
    enable_dns_support = true
    tags               = {
    Name               = "vpc.tf"
   }
}

#subnet section
resource "aws_subnet" "web" {
vpc_id                 = aws_vpc.myvpc.id
availability_zone      = format("%s%s",var.region,var.availability_zones[0]) 
cidr_block             = cidrsubnet(var.vpc_cidr,8,0) 
tags                   = {
      Name             = var.subnet_tag[0] 
   }        
}

resource "aws_subnet" "app" {
vpc_id                 = aws_vpc.myvpc.id
availability_zone      = format("%s%s",var.region,var.availability_zones[1])
cidr_block             = cidrsubnet(var.vpc_cidr,8,1) 
tags                   = {
      Name             = var.subnet_tag[1]
   }        
}

resource "aws_subnet" "db" {
vpc_id                 = aws_vpc.myvpc.id
availability_zone      = format("%s%s",var.region,var.availability_zones[2])
cidr_block             = cidrsubnet(var.vpc_cidr,8,2) 
tags                   = {
      Name             = var.subnet_tag[2]
   }        
}

resource "aws_subnet" "mgmt" {
vpc_id                 = aws_vpc.myvpc.id
availability_zone      = format("%s%s",var.region,var.availability_zones[3])
cidr_block             = cidrsubnet(var.vpc_cidr,8,3) 
tags                   = {
      Name             = var.subnet_tag[3]
   }        
}