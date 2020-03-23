# Deploy ec2 to production
*** INSTRUCCIONES ***
Este repo crea un ec2, segurity group, elasticip ,iam role , policy

- 1. MODIFICAR EL terraform.tfvars
- 2. terraform init
- 3. terraform workspace new    $WORKSPACE
- 4. terraform apply -var-file terraform.tfvars
- 5. hacer ssh al ec2. 

*** ------------------- ***

# destroy stack - BE CAREFUL TO PRODUCTION
 . terraform destroy 
#  to get state and output 
. terraform state list
# to update new modules
. terraform get -update=true
# ###########################
[FEAT] EC2 - SEC GROUP - IAM ROLE - POLICY -- to server ec2 
# policy 
. s3 putobject, getobject, getobjectacl,putobjectacl - in any buckets. (1)
# role
. iam role, iam policy attachment, iam instance profile (3)
# sec group
. sg 80,5000,22	(1)
# ec2
. ec2 to (1)
