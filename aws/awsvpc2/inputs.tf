variable primary_region {
  type        = string
  default     = "us-east-1"
  description = "primary region for vpc"
}

variable primary_cidr {
  type        = string
  default     = "10.10.0.0/16"
  description = "default cidr range for vpc"
}

variable primary_subnets {
  type        = list(string)
  default     = ["web", "app", "db", "mgmt"]
  description = "variable for subnet creation"
}
