


vpc = [{
  cidr_block = "10.0.0.0/20"
  tags       = { "Name" : "MyFirstNetwork" }
}]

rtassociation = [{
  route_table_id  = "rtb-0ebc0a35016475ecd"
  subnet_id       = "subnet-0caafad8c1d8c5063"
}]