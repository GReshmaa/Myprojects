variable "vpc_id" {
  description = "The ID of the VPC where the subnet will be created"
}

variable "cidr_block" {
  description = "The IPv4 CIDR block for the subnet"
 
}

variable "availability_zone" {
  description = "The availability zone for the subnet"

}


variable "map_public_ip_on_launch" {
  description = "Whether instances in this subnet should be assigned a public IP"

}

variable "assign_ipv6_address_on_creation" {
  description = "Assign an IPv6 address to instances in this subnet on creation"

}

variable "enable_dns64" {
  description = "Enable DNS64 for the subnet"

}

variable "enable_lni_at_device_index" {
  description = "Enable Local Network Interface (LNI) at device index"
 
}
variable "ipv6_cidr_block" {
  description = "The IPv6 CIDR block for the subnet"

}

variable "ipv6_native" {
  description = "Specify whether this subnet is an IPv6-only subnet"
 
}

variable "tags" {
  
}