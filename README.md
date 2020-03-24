# Deploy ec2 to production
 - Create a CONTAINER CLUSTER and NODE POOL - it took about 3 minutes , and you may be put "yes" to create
Print endpoint and master_version so 
Before that you run terraform :
* you will have to be authenticated via google cloug console - GCLOUD
 gcloud config set project $PROJECT_ID
# this key.json was created from service account 
 export GOOGLE_APPLICATION_CREDENTIALS="/home/jordy/gcp-gke-api/key.json"
 export GOOGLE_CLOUD_PROJECT=$PROJECT_ID

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
