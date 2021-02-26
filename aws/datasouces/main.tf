data "aws_vpc" "default" {
    default    = true
}

data "aws_subnet_ids" "default" {
    vpc_id     = data.aws_vpc.default.id
}

resource "aws_subnet" "extrasubnet" {
    vpc_id     = data.aws_vpc.default.id
    cidr_block = cidrsubnet(data.aws_vpc.default.cidr_block, 4, length(data.aws_subnet_ids.default.ids))
    tags       = {
    Name       = "extra"
  }
}   