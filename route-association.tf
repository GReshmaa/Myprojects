module"rtassociation"{
source = "./aws-route-association"
 for_each  = { for rt in var.rtassociation : rt.subnet_id => rt}
       route_table_id                       = each.value.route_table_id
       subnet_id                            = each.value.subnet_id
}