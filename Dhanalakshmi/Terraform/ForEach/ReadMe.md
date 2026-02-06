For each Assignment :

1.create 3 s3 Buckets using for_each set(string)
2.create 3 subnets using for_each map(string).Subnet name and CICR block should be different for each resource


For Point 1 :

a. create a variable with name buckets_s3 in variables.tf
b. Initialize the variable buckets_s3 in terraform.tfvars

 	buckets_s3 = [
  "s3-bucket-tf-demo1-fre",
  "s3-bucket-tf-demo2-fre",
  "s3-bucket-tf-demo3-fre"
]

c. call buckets_s3 variable in main.tf

	resource "aws_s3_bucket" "this" {

  for_each = var.buckets_s3
  bucket = each.key

  tags = {
    Name = each.key
  }
}


For Point 2 :

a. create a variable with name subnet in variables.tf
b. Initialize the variable subnet in terraform.tfvars

 	subnet = {
    subnet1 = "1.0.0.0/24",
    subnet2 = "1.0.1.0/24",
    subnet3 = "1.0.2.0/24"
}

c. call subnet variable in main.tf

	resource "aws_subnet" "this" {
    vpc_id     = aws_vpc.web_vpc.id
     for_each = var.subnet
    cidr_block = each.value
  
    tags = {
        Name = each.key
    }
}

Then run terraform init ,terraform plan, terraform apply. 
After successfully created s3 buckets with different Names and subnet. 

Use terraform destroy to destroy the created subnets and s3 buckets.

