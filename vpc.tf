

module "custom-vpc" {
  source                               = "./aws-vpc"
  for_each                             = { for eachNetwork in var.vpc : eachNetwork.cidr_block => eachNetwork }
  cidr_block                           = each.key
  ipv4_ipam_pool_id                    = each.value.ipv4_ipam_pool_id
  instance_tenancy                     = each.value.instance_tenancy
  ipv6_ipam_pool_id                    = each.value.ipv6_ipam_pool_id
  ipv4_netmask_length                  = each.value.ipv4_netmask_length
  ipv6_cidr_block                      = each.value.ipv6_cidr_block
  ipv6_netmask_length                  = each.value.ipv6_netmask_length
  assign_generated_ipv6_cidr_block     = each.value.assign_generated_ipv6_cidr_block
  enable_dns_hostnames                 = each.value.enable_dns_hostnames
  enable_dns_support                   = each.value.enable_dns_support
  enable_network_address_usage_metrics = each.value.enable_network_address_usage_metrics
  ipv6_cidr_block_network_border_group = each.value.ipv6_cidr_block_network_border_group
  tags                                 = each.value.tags
}

