# tf_dynamodb_with_permissions

terraform plan -var 'vpc_id=vpc-00f8f717048b3da53' 'subnet_id=subnet-05108b33ec8719ae7'
terraform apply -var 'vpc_id=vpc-00f8f717048b3da53' 'subnet_id=subnet-05108b33ec8719ae7'

# apply using tfvars file

terraform apply -var-file=dev.tfvars
