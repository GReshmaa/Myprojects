
variable "vpc" {
  type = list(object({
    cidr_block                           = optional(string)
    instance_tenancy                     = optional(string)
    ipv4_ipam_pool_id                    = optional(string)
    ipv4_netmask_length                  = optional(string)
    ipv6_cidr_block                      = optional(string)
    ipv6_ipam_pool_id                    = optional(string)
    ipv6_netmask_length                  = optional(string)
    ipv6_cidr_block_network_border_group = optional(string)
    enable_dns_support                   = optional(string)
    enable_network_address_usage_metrics = optional(string)
    enable_dns_hostnames                 = optional(string)
    assign_generated_ipv6_cidr_block     = optional(string)
    tags                                 = optional(map(string))
  }))
  default = []
}


variable "rtassociation" {
    type = list(object({
       route_table_id                       = optional(string)
       subnet_id                            = optional(string)           
    }))
}