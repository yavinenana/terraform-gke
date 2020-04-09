# function with Terraform v0.11.13 \ + provider.google v3.15.0 --- in new version you must removed quotes
# download binary terraform https://releases.hashicorp.com/terraform/0.11.13/
# Deploy CLUSTER K8S on GOOGLE CLOUD PLATFORM
 - Create a CONTAINER CLUSTER and NODE POOL - it took about 3 minutes , and you may be put "yes" to create
Print endpoint and master_version so 
Before that you run terraform :
* you will have to be authenticated via google cloug console - GCLOUD
 gcloud config set project $PROJECT_ID
# this key.json was created from service account 
 export GOOGLE_APPLICATION_CREDENTIALS="$HOME/gcp-gke-api/key.json"
 export GOOGLE_CLOUD_PROJECT=$PROJECT_ID

*** INSTRUCCIONES ***
Este repo crea un ec2, segurity group, elasticip ,iam role , policy

- 1. MODIFICAR EL terraform.tfvars
- 2. terraform init
- 3. terraform workspace new    $WORKSPACE
- 4. terraform apply -var-file terraform.tfvars
- 5. hacer ssh al cluster.
 $ gcloud container clusters get-credentials demo-cluster --region us-west1 --project $PROJECT-ID
 

*** ------------------- ***

# destroy stack - BE CAREFUL TO PRODUCTION
 . terraform destroy 
#  to get state and output 
. terraform state list
# to update new modules
. terraform get -update=true
# ###########################
