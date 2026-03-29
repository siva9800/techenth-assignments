For each Assignment :

1.create 3 s3 Buckets using for_each set(string)
2.create 3 subnets using for_each map(string).Subnet name and CICR block should be different for each resource


For Point 1 :

a. create a variable with name buckets in variables.tf
b. Initialize the variable buckets in terraform.tfvars

 	buckets = [
  "nmsbucket-1",
  "nmsbucket-2",
  "nmsbucket-3"
]

c. call buckets variable in main.tf

	resource "aws_s3_bucket" "s3_1" {

  for_each = var.buckets
  bucket = each.key

  tags = {
    Name = each.key
  }
}


For Point 2 :

a. create a variable with name subnets in variables.tf
b. Initialize the variable subnet in terraform.tfvars

 	subnet = {
    subnetloop1 = "10.0.1.0/24",
    subnetloop2 = "10.0.2.0/24",
    subnetloop3 = "10.0.3.0/24"
}

c. call subnets variable in main.tf

	resource "aws_subnet" "subnetloop" {
    vpc_id     = aws_vpc.web_vpc.id
     for_each = var.subnets
    cidr_block = each.value
  
    tags = {
        Name = each.key
    }
}

Then run terraform init ,terraform plan, terraform apply. 
After successfully created s3 buckets with different Names and subnet. 

Use terraform destroy to destroy the created subnets and s3 buckets.


