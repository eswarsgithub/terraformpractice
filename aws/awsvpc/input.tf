#regionzone
variable region {
  type        = string
  default     = "us-east-1"
  description = "variable for region"
}

#cidrrange
variable vpc_cidr {
  type        = string
  default     = "192.168.0.0/16"
  description = "vpc cidr value"
}

#tagname 
variable subnet_tag {
  type        = list(string)
  default     = ["web","app","db","mgmt"]
  description = "subnet tag names"
}

#availabaility zones
variable availability_zones {
  type        = list(string)
  default     =["a","b","c","d"]
  description = "description"
}



