resource "aws_vpc" "ntier" {
      cidr_block = var.primary_cidr
      tags       = {
      Name       = "ntier"
   }
}

resource "aws_subnet" "ntiersubnet" {
    count        = length(var.primary_subnets)
    vpc_id       = aws_vpc.ntier.id
    cidr_block   = cidrsubnet(var.primary_cidr, 8, count.index)
    tags         = {
    Name         = var.primary_subnets[count.index]
  }
}