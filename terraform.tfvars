// ------------------terraform.tfvars to launch in gcp
// ------------------new google kubernetes platform
// ------------------replace all values - que considereres

name	= "tfyavineapp"
project = "projectjfpb2"
regiongcp = "us-west1"
initial_node_count  = 1
machine_type = "n1-standard-1"

// -------nomenclatura
description_dev = "description terraform dev"
description_prod = "description terraform prod"
version = "1"
enviroment = "test"
