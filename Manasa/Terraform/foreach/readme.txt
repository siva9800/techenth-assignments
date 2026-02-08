1.Creating S3 Buckets by using foreach loop with set type.
resource "aws_s3_bucket" "s3bucketlist"{
    for_each = toset(var.s3buckets-list)
    bucket = each.value
}

variable "s3buckets-list"{
    description = "Creating S3 buckets"
    type = set(string)
    default = ["ms3bucket-1","ms3bucket-2","ms3bucket-3"]
}


2.creating subnet by using foreach loop with map type
variable "myvpc" {
    description = "My vpc"
    type = string
    default = "10.0.0.0/16"
}

variable "subnetlist"{
    description = "creating subnets"
    type = map(string)
    default = {        
            publicm = "10.0.1.0/24"      
        
            private = "10.0.2.0/24"
        }
    }
main.tf code:
resource "aws_vpc" "vpc"{
  cidr_block = var.myvpc
  tags = {
    Name = "myvpcnew"
  }
}
resource "aws_subnet" "subnetprac"{
  for_each = var.subnetlist
  vpc_id = aws_vpc.vpc.id
   cidr_block = each.value
   availability_zone = var.availability_zone
   tags = {
    Name = each.key
   }
}



