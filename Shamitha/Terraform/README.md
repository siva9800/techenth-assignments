# Terraform Assignment

This folder contains Terraform configuration and screenshots showing how AWS resources were created using Terraform.

## Steps Performed

1. Created Terraform configuration files to define AWS resources like VPC, subnets and S3 buckets.

2. Initialized Terraform:
   - Command used: `terraform init`
   - This downloaded the required provider plugins and prepared the folder.

3. Checked the execution plan:
   - Command used: `terraform plan`
   - Output showed:
     Plan: 7 to add, 0 to change, 0 to destroy
   - This means Terraform will create 7 new resources.

4. Applied the configuration:
   - Command used: `terraform apply`
   - Terraform started creating AWS resources.

5. Resources created successfully:
   - VPC (main-vpc)
   - Public Subnet 1
   - Public Subnet 2
   - Private Subnet
   - S3 Bucket: shamitha-bucket-1-2026
   - S3 Bucket: shamitha-bucket-2-2026
   - S3 Bucket: shamitha-bucket-3-2026

6. Final output displayed:
   Apply complete! Resources: 7 added, 0 changed, 0 destroyed.

7. This confirms all infrastructure was created successfully using Terraform.

## Outcome

- Learned how to initialize Terraform
- Understood Terraform plan and apply commands
- Learned how Terraform creates AWS infrastructure
- Understood how Terraform manages multiple resources together


